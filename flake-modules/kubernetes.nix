topLevel@{ flake-parts-lib, inputs, lib, ... }: {
  imports = [
    ./runtime.nix
    ./nixpkgs.nix
    ./overridable-package.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.kubernetes = flakeModule: {
    imports = [
      topLevel.config.flake.flakeModules.overridablePackage
      topLevel.config.flake.flakeModules.runtime
      topLevel.config.flake.flakeModules.nixpkgs
    ];
    options = {

      flake = lib.mkOption {
        type = lib.types.submoduleWith {
          modules = [{
            options.lib.findKubernetesPackages = lib.mkOption {
              type = lib.types.functionTo (lib.types.attrsOf lib.types.package);
              default = lib.attrsets.concatMapAttrs
                (runtimeName: runtime:
                  lib.attrsets.concatMapAttrs
                    (launcherName: launcher:
                      lib.attrsets.concatMapAttrs
                        (packageName: package:
                          let
                            toKebabCase = lib.replaceStrings lib.upperChars (map (s: "-${s}") lib.lowerChars);

                          in
                          if package.type or null == "derivation" then {
                            "${runtimeName}-${launcherName}-${toKebabCase packageName}" =
                              package;
                          } else if (package.overridden-package or { }).type or null == "derivation" then {
                            "${runtimeName}-${launcherName}-${toKebabCase packageName}" =
                              package.overridden-package;
                          } else { }
                        )
                        launcher.kubernetes or { }
                    )
                    runtime.launchers
                );
            };

            options.lib.pathToKubernetesName = lib.mkOption {
              type = lib.types.functionTo lib.types.str;
              default = path: lib.trivial.pipe path [
                (builtins.split "/")
                (builtins.filter (s: builtins.isString s && s != ""))
                (builtins.concatStringsSep "-")
                lib.toLower
              ];
            };
          }];
        };
      };
      perSystem = flake-parts-lib.mkPerSystemOption (
        perSystem@{ pkgs, system, inputs', ... }: {
          packages.skopeo-nix2container = inputs'.nix2container.packages.skopeo-nix2container.overrideAttrs (old: {
            patches = old.patches or [ ] ++ [
              (pkgs.fetchpatch {
                # Add --image-parallel-copies flag
                url = "https://github.com/Atry/skopeo/commit/db8701ceb6c88da8def345d539e67c27e026a04b.patch";
                hash = "sha256-VTG/uf2yw+AiGHgyjKHkrFoEO+0Ne9wtjICmBomTHss=";
              })
            ];
          });
          ml-ops.runtime = runtime: {
            config.launcher = launcher: {
              options.kubernetes = lib.mkOption {
                type = lib.types.submoduleWith {
                  modules = [
                    (kubernetes:
                      let
                        hostPath =
                          "${
                              kubernetes.config.imageRegistry.host
                            }${
                              if kubernetes.config.imageRegistry.path != null
                              then "/${kubernetes.config.imageRegistry.path}"
                              else ""
                            }";
                      in
                      {
                        options.namespace = lib.mkOption {
                          type = lib.types.str;
                          default = "default";
                        };
                        options.imageRegistry.host = lib.mkOption {
                          type = lib.types.str;
                          default = "registry.hub.docker.com";
                        };
                        options.imageRegistry.path = lib.mkOption {
                          type = lib.types.nullOr lib.types.str;
                          default = null;
                        };
                        options.volumeMounts = lib.mkOption {
                          type = lib.types.listOf (lib.types.attrsOf lib.types.anything);
                        };
                        config.volumeMounts = builtins.concatMap
                          (lib.attrsets.mapAttrsToList
                            (mountPath: protocolConfig: {
                              inherit mountPath;
                              name = flakeModule.config.flake.lib.pathToKubernetesName mountPath;
                            })
                          )
                          (builtins.attrValues runtime.config.volumeMounts or { });

                        options.volumes = lib.mkOption {
                          type = lib.types.listOf (lib.types.attrsOf lib.types.anything);
                        };
                        config.volumes = builtins.concatMap
                          (lib.attrsets.mapAttrsToList
                            (mountPath: protocolConfig:
                              {
                                name = flakeModule.config.flake.lib.pathToKubernetesName mountPath;
                              } // protocolConfig.kubernetesInlineVolume or {
                                persistentVolumeClaim.claimName = "${runtime.config._module.args.name}-${launcher.config._module.args.name}-${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-claim";
                              }
                            )
                          )
                          (builtins.attrValues runtime.config.volumeMounts or { });
                        options.containers = lib.mkOption {
                          default = { };
                          type = (lib.types.attrsOf (lib.types.submoduleWith {
                            modules = [
                              {
                                options.manifest = lib.mkOption {
                                  default = { };
                                  type = lib.types.deferredModule;
                                };
                              }
                            ];
                          })) // {
                            deprecationMessage = ''
                              Use `ml-ops.services.<name>.launchers.<name>.kubernetes.helmTemplates.deployment.spec.template.spec.containers` or  `ml-ops.jobs.<name>.launchers.<name>.kubernetes.helmTemplates.job.spec.template.spec.containers`  instead.
                            '';
                          };
                        };

                        options.containerManifest = lib.mkOption {
                          default = { };
                          type = lib.types.deferredModuleWith {
                            staticModules = [
                              (container: {
                                config._module.freeformType = lib.types.attrsOf lib.types.anything;
                                config.env =
                                  lib.attrsets.mapAttrsToList
                                    (name: value: {
                                      inherit name;
                                      # Escape '$' in value to avoid being expanded by Kubernetes.
                                      # See https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#environment-variables
                                      value = builtins.replaceStrings [ "$" ] [ "$$" ] value;
                                    })
                                    container.config._module.environmentVariables;
                                options = {
                                  name = lib.mkOption {
                                    type = lib.types.str;
                                  };
                                  image = lib.mkOption {
                                    defaultText = lib.literalExpression "perSystem.services|jobs.<name>.launchers.<name>.kubernetes.<name>.remoteImage";
                                    default = kubernetes.config.remoteImage;
                                  };
                                  args = lib.mkOption {
                                    type = lib.types.nullOr (lib.types.listOf lib.types.str);
                                    default = null;
                                  };
                                  env = lib.mkOption {
                                    type = lib.types.listOf lib.types.anything;
                                    default = [ ];
                                  };
                                  volumeMounts = lib.mkOption {
                                    default = kubernetes.config.volumeMounts;
                                  };
                                  _module.environmentVariables = lib.mkOption {
                                    default = launcher.config.environmentVariables;
                                    defaultText = lib.literalExpression "launchers.<name>.environmentVariables";
                                  };
                                };
                              })
                            ];
                          };
                        };
                        options.remoteImage = lib.mkOption {
                          type = lib.types.str;
                          default =
                            "${
                              hostPath
                            }/${
                              runtime.config._module.args.name
                            }-${
                              launcher.config._module.args.name
                            }:${
                              builtins.replaceStrings ["+"] ["_"] runtime.config.version
                            }";
                          defaultText = "registry.hub.docker.com/‹job-or-service-name›-‹launcher-name›:‹version›.‹git-rivision›.‹narHash›";
                        };
                        options.devenvContainerName = lib.mkOption {
                          type = lib.types.str;
                          default = "processes";
                        };
                        options.pushImage = lib.mkOption {
                          default = { };
                          type = lib.types.submoduleWith {
                            modules = [
                              (pushImage: {
                                imports = [ perSystem.config.ml-ops.overridablePackage ];
                                options.skopeoCopyArgs = lib.mkOption {
                                  type = lib.types.listOf lib.types.str;
                                  default = [ ];
                                };
                                config.base-package =
                                  pkgs.writeShellScriptBin
                                    "${runtime.config._module.args.name}-push-image-to-registry.sh"
                                    ''
                                      read -a skopeoCopyArgsArray <<< "$SKOPEO_ARGS"
                                      ${lib.escapeShellArgs [
                                        (lib.getExe perSystem.config.packages.skopeo-nix2container)
                                        "--insecure-policy"
                                        "copy"
                                      ]} \
                                      ${
                                        lib.escapeShellArgs pushImage.config.skopeoCopyArgs
                                      } \
                                      "''${skopeoCopyArgsArray[@]}" \
                                      ${lib.escapeShellArgs [
                                        "nix:${perSystem.config.devenv.shells.${runtime.config.name}.containers.${kubernetes.config.devenvContainerName}.derivation}"
                                        "docker://${kubernetes.config.remoteImage}"
                                      ]}
                                    '';
                              })
                            ];
                          };
                        };
                        options.helmTemplates = lib.mkOption {
                          description = ''
                            Kubernetes manifests to be templated by Helm.

                            For each template, the key is the base file name of the template (extension is always `yaml`), and the value is the template itself.
                          '';
                          type = lib.types.submoduleWith {
                            modules = [
                              {
                                _module.freeformType = lib.types.attrsOf (lib.types.attrsOf lib.types.anything);
                              }
                            ];
                          };
                          default = { };
                        };
                        config.helmTemplates = lib.attrsets.mergeAttrsList [
                          kubernetes.config.persistentVolumeManifests
                          kubernetes.config.persistentVolumeClaimManifests
                        ];
                        options.persistentVolumeManifests = lib.mkOption {
                          type = lib.types.attrsOf (lib.types.submoduleWith {
                            modules = [
                              (persistentVolumeManifest: {
                                options = {
                                  apiVersion = lib.mkOption {
                                    default = "v1";
                                  };
                                  kind = lib.mkOption {
                                    default = "PersistentVolume";
                                  };
                                  metadata = {
                                    name = lib.mkOption {
                                      type = lib.types.str;
                                    };
                                    namespace = lib.mkOption {
                                      type = lib.types.str;
                                    };
                                  };

                                  spec = lib.mkOption {
                                    type = lib.types.attrsOf lib.types.anything;
                                  };
                                };

                              })
                            ];
                          });
                        };
                        config.persistentVolumeManifests =
                          lib.attrsets.concatMapAttrs
                            (mountPath: protocolConfig: lib.optionalAttrs (protocolConfig?kubernetesVolume) {
                              "${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-volume" = {
                                spec = protocolConfig.kubernetesVolume // {
                                  # TODO(bo@preemo.io, 11/21/2023): Make it be configurable
                                  accessModes = [ "ReadWriteMany" ];
                                  capacity.storage = "1000Ti";
                                };
                                metadata = {
                                  name = "${runtime.config._module.args.name}-${launcher.config._module.args.name}-${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-volume";
                                  namespace = kubernetes.config.namespace;
                                };
                              };
                            })
                            (lib.attrsets.mergeAttrsList (builtins.attrValues runtime.config.volumeMounts or { }));

                        options.persistentVolumeClaimManifests = lib.mkOption {
                          type = lib.types.attrsOf (lib.types.submoduleWith {
                            modules = [
                              (persistentVolumeClaimManifest: {
                                options = {
                                  apiVersion = lib.mkOption {
                                    default = "v1";
                                  };
                                  kind = lib.mkOption {
                                    default = "PersistentVolumeClaim";
                                  };
                                  metadata = {
                                    name = lib.mkOption {
                                      type = lib.types.str;
                                    };
                                    namespace = lib.mkOption {
                                      type = lib.types.str;
                                    };
                                  };

                                  spec.volumeName = lib.mkOption {
                                    type = lib.types.str;
                                  };
                                  spec.storageClassName = lib.mkOption {
                                    default = "";
                                  };
                                  spec.accessModes = lib.mkOption {
                                    default = [ "ReadWriteMany" ];
                                  };
                                  spec.resources.requests.storage = lib.mkOption {
                                    default = "1000Ti";
                                  };
                                };
                              })
                            ];
                          });
                        };
                        config.persistentVolumeClaimManifests =
                          lib.attrsets.concatMapAttrs
                            (mountPath: protocolConfig: lib.optionalAttrs (protocolConfig?kubernetesVolume) {
                              "${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-claim" = {
                                spec.volumeName = "${runtime.config._module.args.name}-${launcher.config._module.args.name}-${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-volume";
                                spec.storageClassName = protocolConfig.kubernetesVolume.storageClassName or "";
                                metadata = {
                                  name = "${runtime.config._module.args.name}-${launcher.config._module.args.name}-${flakeModule.config.flake.lib.pathToKubernetesName mountPath}-claim";
                                  namespace = kubernetes.config.namespace;
                                };
                              };
                            })
                            (lib.attrsets.mergeAttrsList (builtins.attrValues runtime.config.volumeMounts or { }));

                        options.helmChartYaml = lib.mkOption {
                          type = lib.types.attrsOf lib.types.anything;
                        };

                        config.helmChartYaml = {
                          apiVersion = "v2";
                          name = "${runtime.config._module.args.name}-${launcher.config._module.args.name}";
                          version = runtime.config.version;
                        };

                        options.helm-chart = lib.mkOption {
                          type = lib.types.package;
                          default =
                            pkgs.linkFarm "helm-chart" ([
                              rec {
                                name = "Chart.yaml";
                                path = pkgs.writers.writeYAML name kubernetes.config.helmChartYaml;
                              }
                            ] ++ (
                              lib.mapAttrsToList
                                (attrName: content: rec {
                                  name = "templates/${attrName}.yaml";
                                  path = pkgs.writers.writeYAML name content;
                                })
                                kubernetes.config.helmTemplates
                            ));
                        };

                        options.helmReleaseName = lib.mkOption {
                          default = "${runtime.config._module.args.name}-${launcher.config._module.args.name}";
                        };

                        options.helmUpgrade = lib.mkOption {
                          default = { };
                          type = lib.types.submoduleWith {
                            modules = [
                              (helmUpgrade: {
                                imports = [ perSystem.config.ml-ops.overridablePackage ];
                                options.extraFlags = lib.mkOption {
                                  type = lib.types.separatedString " ";
                                  default = "";
                                };
                                config.base-package = pkgs.writeShellScriptBin
                                  "${runtime.config._module.args.name}-helm-upgrade.sh"
                                  ''
                                    ${
                                      (lib.escapeShellArg (lib.getExe kubernetes.config.pushImage.overridden-package))
                                    } && ${
                                      lib.escapeShellArgs [
                                        (lib.getExe pkgs.kubernetes-helm)
                                        "upgrade"
                                        "--install"
                                        "--force"
                                      ]
                                    } ${helmUpgrade.config.extraFlags} ${
                                      lib.escapeShellArgs [
                                        kubernetes.config.helmReleaseName
                                        kubernetes.config.helm-chart
                                      ]
                                    }
                                  '';
                              })
                            ];
                          };
                        };
                        options.helmUninstall = lib.mkOption {
                          default = { };
                          type = lib.types.submoduleWith {
                            modules = [
                              {
                                imports = [ perSystem.config.ml-ops.overridablePackage ];
                                config.base-package = pkgs.writeShellScriptBin
                                  "${runtime.config._module.args.name}-helm-uninstall.sh"
                                  (lib.escapeShellArgs [
                                    (lib.getExe pkgs.kubernetes-helm)
                                    "uninstall"
                                    "--keep-history"
                                    "--cascade"
                                    "foreground"
                                    kubernetes.config.helmReleaseName
                                  ]);
                              }
                            ];
                          };
                        };
                        options.helmDelete = lib.mkOption {
                          default = { };
                          type = lib.types.submoduleWith {
                            modules = [
                              {
                                imports = [ perSystem.config.ml-ops.overridablePackage ];
                                config.base-package = pkgs.writeShellScriptBin
                                  "${runtime.config._module.args.name}-helm-delete.sh"
                                  (lib.escapeShellArgs [
                                    (lib.getExe pkgs.kubernetes-helm)
                                    "delete"
                                    "--cascade"
                                    "foreground"
                                    kubernetes.config.helmReleaseName
                                  ]);
                              }
                            ];
                          };
                        };
                      })
                  ];
                };
              };
            };
          };

          ml-ops.devcontainer.devenvShellModule = {
            packages = [
              pkgs.kubectl
              perSystem.config.packages.skopeo-nix2container
            ];
          };
        }
      );
    };
  };
}
