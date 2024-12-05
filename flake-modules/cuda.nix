topLevel@{ flake-parts-lib, inputs, ... }: {
  imports = [
    inputs.flake-parts.flakeModules.flakeModules
    ./common.nix
  ];
  flake.flakeModules.cuda = {
    imports = [
      topLevel.config.flake.flakeModules.common
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption ({ lib, pkgs, system, ... }: {
      config = lib.mkIf (system != "aarch64-darwin") {
        nixpkgs.config.allowUnfree = true;
        nixpkgs.config.cudaSupport = true;

        ml-ops.common = common: {
          config.devenvShellModule.enterShell = ''
            export LD_LIBRARY_PATH="$(${
              lib.escapeShellArgs [
                "${inputs.nix-gl-host.defaultPackage.${system}}/bin/nixglhost"
                "--print-ld-library-path"
              ]
            })":''${LD_LIBRARY_PATH:-}
          '';
          config.devenvShellModule.packages = [
            common.config.cuda.home
          ];

          config.environmentVariables.CUDA_HOME = toString (common.config.cuda.home);
          options.cuda.home = lib.mkOption {
            type = lib.types.package;
            default = pkgs.symlinkJoin {
              name = "cuda-home";
              paths = common.config.cuda.packages;
            };
          };
          options.cuda.cudaPackages = lib.mkOption {
            type = lib.types.attrsOf lib.types.package;
            default = pkgs.cudaPackages;
            defaultText = lib.literalExpression ''pkgs.cudaPackages'';
          };
          options.cuda.packages = lib.mkOption {
            type = lib.types.listOf lib.types.package;
            default = [
              # TODO: Figure out if we can use `pkgs.cudaPackages.cuda_nvcc.lib` instead of `pkgs.cudaPackages.cuda_nvcc`. The `.lib` one is smaller.
              common.config.cuda.cudaPackages.cuda_nvcc

              # TODO: Remove `pkgs.cudaPackages.cudatoolkit` in favor of fine-grained packages.
              common.config.cuda.cudaPackages.cudatoolkit

              common.config.cuda.cudaPackages.cuda_cudart.lib

              # TODO: Figure out if we can use `pkgs.cudaPackages.libcublas.lib` instead of `pkgs.cudaPackages.libcublas`. The `.lib` one is smaller.
              common.config.cuda.cudaPackages.libcublas

              common.config.cuda.cudaPackages.nccl

              # TODO: Figure out if we can use `pkgs.cudaPackages.cudnn.lib` instead of `pkgs.cudaPackages.cudnn`. The `.lib` one is smaller.
              common.config.cuda.cudaPackages.cudnn
            ];
            defaultText = lib.literalExpression ''
              [
                pkgs.cudaPackages.cuda_nvcc
                pkgs.cudaPackages.cudatoolkit
                pkgs.cudaPackages.cuda_cudart.lib
                pkgs.cudaPackages.libcublas
                pkgs.cudaPackages.nccl
                pkgs.cudaPackages.cudnn
              ]
            '';
          };

          config.devenvShellModule.containers.processes.layers = lib.mkBefore (
            builtins.map (cudaPackage: { deps = [ cudaPackage ]; }) common.config.cuda.packages
          );
        };
      };
    });
  };
}
