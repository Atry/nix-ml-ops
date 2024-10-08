topLevel@{ flake-parts-lib, inputs, lib, ... }: {
  imports = [
    ./kubernetes.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.gkeCredential = {
    imports = [
      topLevel.config.flake.flakeModules.kubernetes
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption
      (perSystem@{ lib, pkgs, ... }: {
        ml-ops.runtime = runtime: {
          config.launcher = launcher: {
            options.kubernetes = lib.mkOption {
              type = lib.types.submoduleWith {
                modules = [
                  (kubernetes:
                    let
                      authModule = {
                        pipe =
                          lib.mkIf (kubernetes.config.gke != null)
                            (lib.mkDerivedConfig kubernetes.options.gke (gke:
                              [
                                (previousPackage: previousPackage.overrideAttrs
                                  (previousAttrs: {
                                    gkeCluster = gke.cluster;
                                    gkeRegion = gke.region;
                                    USE_GKE_GCLOUD_AUTH_PLUGIN = "True";
                                    buildCommand = ''
                                      gcloud container clusters get-credentials \
                                        "$gkeCluster" \
                                        --region "$gkeRegion"

                                      ${previousAttrs.buildCommand}
                                    '';
                                    nativeBuildInputs = previousAttrs.nativeBuildInputs ++ [
                                      pkgs.cacert
                                      (
                                        pkgs.google-cloud-sdk.withExtraComponents [
                                          pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin
                                          pkgs.google-cloud-sdk.components.kubectl
                                        ]
                                      )
                                    ];
                                  })
                                )
                              ]
                            ));
                      };
                    in
                    {
                      options.gke = lib.mkOption {
                        description = ''
                          The Google Kubernetes Engine (GKE) options.

                          When `gke` is `null`, the GKE options are disabled.
                          When `gke` is `{}`, the GKE options are enabled with default values.
                        '';

                        default = null;
                        type = lib.types.nullOr (lib.types.submoduleWith {
                          modules = [
                            {
                              options.region = lib.mkOption {
                                type = lib.types.str;
                                description = ''
                                  The GCP region.
                                '';
                              };
                              options.cluster = lib.mkOption {
                                type = lib.types.str;
                                description = ''
                                  The GKE cluster name.
                                '';
                              };
                            }
                          ];
                        });
                      };

                      config.pushImage.pipe =
                        lib.mkIf (kubernetes.config.gke != null)
                          (lib.mkDerivedConfig kubernetes.options.gke (gke: [
                            (previousPackage: previousPackage.overrideAttrs
                              (previousAttrs: {
                                buildCommand = ''
                                  export skopeoCopyArgs="$(printf "%q " --dest-registry-token "$(gcloud auth print-access-token)")"
                                  ${previousAttrs.buildCommand}
                                '';
                                nativeBuildInputs = previousAttrs.nativeBuildInputs ++ [
                                  pkgs.cacert
                                  pkgs.google-cloud-sdk
                                ];
                              })
                            )
                          ])
                          );

                      config.helmUpgrade.imports = [
                        authModule
                      ];
                      config.helmDelete.imports = [
                        authModule
                      ];

                    })
                ];
              };
            };
          };
        };
      });
  };
}

