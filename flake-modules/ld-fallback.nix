topLevel@{ flake-parts-lib, inputs, ... }: {
  imports = [
    ./common.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.ldFallback = {
    imports = [
      topLevel.config.flake.flakeModules.common
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption ({ system, lib, pkgs, ... }: {
      ml-ops.common = common: {
        options.ldFallback.libraries = lib.mkOption {
          type = lib.types.listOf lib.types.path;
        };
        config.ldFallback.libraries = [ ];

        options.ldFallback.path = lib.mkOption {
          type = lib.types.path;
          default = "${pkgs.symlinkJoin {
            name = "ld-fallback-path";
            paths = common.config.ldFallback.libraries;
          }}/lib";
        };

        options.ldFallback.enablelogging = lib.mkEnableOption "logging";

        options.ldFallback.libaudit = lib.mkOption {
          type = lib.types.package;
          default = pkgs.runCommandNoCC "libaudit.so"
            {
              nativeBuildInputs = [
                pkgs.gcc
                pkgs.binutils
              ];
            } ''
            gcc -o "$out" -fPIC -shared ${
              pkgs.writeTextFile {
                name="libaudit.c";
                text=''
                  #include <stdbool.h>
                  #include <stdint.h>
                  #include <limits.h>
                  #include <stdio.h>
                  #include <string.h>
                  #include <unistd.h>

                  ${
                    if common.config.ldFallback.enablelogging then ''
                      #define log(...) fprintf(stderr, __VA_ARGS__)
                    '' else ''
                      #define log(...) do {} while (false)
                    ''
                  }

                  /* Copied from link.h */
                  enum
                    {
                      LA_SER_DEFAULT = 0x40,	/* Default directory.  */
                    };
                  unsigned int la_version(unsigned int version) {
                    return version;
                  }
                  char * la_objsearch(const char *name, uintptr_t *cookie, unsigned int flag) {
                    if (flag != LA_SER_DEFAULT) {
                      return (char *)name;
                    }
                    log("libaudit.so: Looking for %s\n", name);
                    if (access(name, F_OK) == 0) {
                      log("libaudit.so: Found existing %s\n", name);
                      return (char *)name;
                    }
                    const char *last_slash = strrchr(name, '/');
                    const char *basename = last_slash == NULL ? name : last_slash + 1;
                    static const char search_prefix[] = "${lib.strings.escapeC ["\\" "\"" "\r" "\n"]  (lib.strings.removeSuffix "/" common.config.ldFallback.path)}/";

                    int search_prefix_length = sizeof(search_prefix) - 1;
                    int basename_max = PATH_MAX - 1 - search_prefix_length;
                    int basename_length = strlen(basename);
                    if (basename_length > basename_max) {
                      log("libaudit.so: File name too long: %s\n", name);
                      return (char *)name;
                    }
                    static char buffer[PATH_MAX];
                    memcpy(buffer, search_prefix, search_prefix_length);
                    memcpy(buffer + search_prefix_length, basename, basename_length + 1);
                    if (access(buffer, F_OK) != 0) {
                      log("libaudit.so: Cannot find a fallback for %s\n", buffer);
                      return (char *)name;
                    }
                    log("libaudit.so: %s -> %s\n", name, buffer);
                    return buffer;
                  }
                '';
              }
            }

            patchelf --remove-rpath "$out"
          '';
        };

        config.environmentVariables = {
          LD_AUDIT = toString common.config.ldFallback.libaudit;
        };

      };

    });
  };
}
