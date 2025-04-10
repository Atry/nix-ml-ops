## flake

Raw flake output attributes\. Any attribute can be set here, but some
attributes are represented by options, to provide appropriate
configuration merging\.



*Type:*
lazy attribute set of raw value

*Declared by:*
 - [lib\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.lib](flake-modules/lib.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes](flake-modules/kubernetes.nix)



## flake\.lib\.findKubernetesPackages



This option has no description\.



*Type:*
function that evaluates to a(n) attribute set of package



*Default:*
` <function> `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes](flake-modules/kubernetes.nix)



## flake\.lib\.mkFlake



This option has no description\.



*Type:*
function that evaluates to a(n) function that evaluates to a(n) attribute set of anything



*Default:*
` <function> `

*Declared by:*
 - [lib\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.lib](flake-modules/lib.nix)



## flake\.lib\.pathToKubernetesName



This option has no description\.



*Type:*
function that evaluates to a(n) string



*Default:*
` <function> `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes](flake-modules/kubernetes.nix)



## perSystem



A function from system to flake-like attributes omitting the ` <system> ` attribute\.

Modules defined here have access to the suboptions and [some convenient module arguments](\.\./module-arguments\.html)\.



*Type:*
module

*Declared by:*
 - [vscode\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.vscode](flake-modules/vscode.nix)
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs](flake-modules/volume-mount-nfs.nix)
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal](flake-modules/volume-mount-local.nix)
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir](flake-modules/volume-mount-empty-dir.nix)
 - [skypilot\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.skypilot](flake-modules/skypilot.nix)
 - [services\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.services](flake-modules/services.nix)
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)
 - [python-vscode\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonVscode](flake-modules/python-vscode.nix)
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)
 - [python-envs-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPoetry](flake-modules/python-envs-poetry.nix)
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508](flake-modules/python-envs-pep508.nix)
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication](flake-modules/poetry2nix-application.nix)
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix](flake-modules/poetry2nix.nix)
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)
 - [options-document\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.optionsDocument](flake-modules/options-document.nix)
 - [nixpkgs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixpkgs](flake-modules/nixpkgs.nix)
 - [nix-ld\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixLd](flake-modules/nix-ld.nix)
 - [nix-ide\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixIde](flake-modules/nix-ide.nix)
 - [ld-fallback-manylinux\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallbackManylinux](flake-modules/ld-fallback-manylinux.nix)
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback](flake-modules/ld-fallback.nix)
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService](flake-modules/kubernetes-service.nix)
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob](flake-modules/kubernetes-job.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes](flake-modules/kubernetes.nix)
 - [jobs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.jobs](flake-modules/jobs.nix)
 - [glibc-tunables\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.glibcTunables](flake-modules/glibc-tunables.nix)
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential](flake-modules/gke-credential.nix)
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)
 - [devenv-python-with-libstdc++\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devenvPythonWithLibstdcxx](flake-modules/devenv-python-with-libstdc++.nix)
 - [devcontainer-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainerPoetry](flake-modules/devcontainer-poetry.nix)
 - [devcontainer-nixos-rebuild\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainerNixosRebuild](flake-modules/devcontainer-nixos-rebuild.nix)
 - [devcontainer-nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainerNix](flake-modules/devcontainer-nix.nix)
 - [devcontainer-gcp-cli-tools\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainerGcpCliTools](flake-modules/devcontainer-gcp-cli-tools.nix)
 - [devcontainer-azure-cli-tools\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainerAzureCliTools](flake-modules/devcontainer-azure-cli-tools.nix)
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda](flake-modules/cuda.nix)
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential](flake-modules/aks-credential.nix)
 - [options-document\.nix](flake-modules/options-document.nix)



## perSystem\.ml-ops\.common



Settings shared between devcontainer and all jobs and services\.
For example, config of ` perSystem.ml-ops.common.xxx ` will be copied to ` perSystem.ml-ops.devcontainer.xxx `, all ` perSystem.ml-ops.jobs.<name>.xx ` and all ` perSystem.ml-ops.services.<name>.xxx `\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.common\.LD_LIBRARY_PATH



This option has no description\.



*Type:*
strings concatenated with “:”



*Default:*
` "" `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.common\.devenvShellModule



Common config that will be copied to ` config.devenv.shells. `*\<shell_name>*` .config ` for each shell\.

See [devenv options](https://devenv\.sh/reference/options/) for supported nested options\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.common\.environmentVariables



Environment variables for either devcontainer, jobs or services\.

For devcontainer, these variables will be copied to via ` devenv `’s [env](https://devenv\.sh/reference/options/\#env) config\.
For kubernetes jobs and services, these variables will be copied to the Pods’ ` spec.containers.*.env ` field\.



*Type:*
lazy attribute set of string



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.common\.pythonPackage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)



## perSystem\.ml-ops\.common\.pythonPackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.common\.pythonPackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.common\.pythonPackage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.common\.version



Version of job or service\.
This will be used as the image tag\.



*Type:*
string



*Default:*
1\.0\.0+\<lastModifiedDate>\.\<git-revision>\.\<narHash>

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.devcontainer



Configuration for the development environment\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.LD_LIBRARY_PATH



This option has no description\.



*Type:*
strings concatenated with “:”



*Default:*
` "" `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.devcontainer\.cuda\.packages



This option has no description\.



*Type:*
list of package



*Default:*

```
[
  pkgs.cudaPackages.cuda_nvcc
  pkgs.cudaPackages.cudatoolkit
  pkgs.cudaPackages.cuda_cudart.lib
  pkgs.cudaPackages.libcublas
  pkgs.cudaPackages.nccl
  pkgs.cudaPackages.cudnn
]

```

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.devcontainer\.cuda\.cudaPackages



This option has no description\.



*Type:*
attribute set of package



*Default:*
` pkgs.cudaPackages `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.devcontainer\.cuda\.home



This option has no description\.



*Type:*
package



*Default:*
` <derivation cuda-home> `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.devcontainer\.devenvShellModule



Common config that will be copied to ` config.devenv.shells. `*\<shell_name>*` .config ` for each shell\.

See [devenv options](https://devenv\.sh/reference/options/) for supported nested options\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.devcontainer\.environmentVariables



Environment variables for either devcontainer, jobs or services\.

For devcontainer, these variables will be copied to via ` devenv `’s [env](https://devenv\.sh/reference/options/\#env) config\.
For kubernetes jobs and services, these variables will be copied to the Pods’ ` spec.containers.*.env ` field\.



*Type:*
lazy attribute set of string



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.devcontainer\.gitattributes



This option has no description\.



*Type:*
strings concatenated with “\\n”

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.gitignore



This option has no description\.



*Type:*
list of string

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.glibcTunables



This option has no description\.



*Type:*
attribute set of string



*Default:*
` { } `

*Declared by:*
 - [glibc-tunables\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.glibcTunables, via option perSystem\.ml-ops\.common](flake-modules/glibc-tunables.nix)



## perSystem\.ml-ops\.devcontainer\.inputsGenerator



A script that will be run in both ` direnv reload ` and ` nix develop ` to generate the flake inputs for the development environment\.



*Type:*
strings concatenated with “\\n”

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.enablelogging



Whether to enable logging\.



*Type:*
boolean



*Default:*
` false `



*Example:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.lasmConfig



This option has no description\.



*Type:*
YAML value



*Default:*

```
{
  rules = [
    {
      cond = {
        rtld = "any";
      };
      default = {
        prepend = [
          {
            saved = "libpath";
          }
          {
            dir = "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib";
          }
        ];
      };
      libpath = {
        save = true;
      };
    }
  ];
}
```

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.libaudit



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/2cnkqwwxnvjnycbxnyh93gfiwysfzw07-ld-audit-search-mod/lib/libld-audit-search-mod.so" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.libraries



This option has no description\.



*Type:*
list of path

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.path



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.ldFallback\.preferRunpathOverLdLibraryPath



This option has no description\.



*Type:*
boolean



*Default:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.devcontainer\.mkPython



This option has no description\.



*Type:*
unspecified value



*Default:*
` <function> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.devcontainer\.mountVolumeWithSudo



This option has no description\.



*Type:*
unspecified value



*Default:*
` true `

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.nixCommonFlakeFlags



This option has no description\.



*Type:*
list of string

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.nixDirenvFlakeFlags



This option has no description\.



*Type:*
list of string

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.nixLdLibraries



The list of paths to be added to the ` NIX_LD_LIBRARY_PATH ` environment variable\.

This option should always be kept empty\. Set ` flakeModules.ldFallback.libraries ` instead when you want any non-empty library path\. See discussion at https://github\.com/NixOS/nixpkgs/pull/248547\#issuecomment-1995469926 about why nix-ld is not a good idea for libraries used in a project\.

Note that ` nix-ld ` is still a good idea for executing non-Nix binaries in the case of https://github\.com/nix-community/NixOS-WSL/issues/222\. When there are system level ` NIX_LD_LIBRARY_PATH ` set for ` nix-ld `, this option should be kept as empty in order to disable the system level ` NIX_LD_LIBRARY_PATH `\.



*Type:*
list of path



*Default:*
` [ ] `

*Declared by:*
 - [nix-ld\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixLd, via option perSystem\.ml-ops\.common](flake-modules/nix-ld.nix)



## perSystem\.ml-ops\.devcontainer\.nixago\.copiedFiles



This option has no description\.



*Type:*
list of string

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.nixago\.requests



This option has no description\.



*Type:*
attribute set of module



*Default:*
` { } `

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.poetry2nix\.args



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.devcontainer\.poetry2nix\.pkgs



The nix package set to use for poetry2nix\.

It is by default set to the nixpkgs from ` nix-ml-ops `’s lock file with a python package specified by ` perSystem.ml-ops.common.pythonPackage `\.



*Type:*
unspecified value



*Default:*

```
pkgs.appendOverlays [
  (self: super: {
    ${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
  })
]

```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.devcontainer\.poetry2nix\.poetry2nixLib



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  callPackage = <function>;
  cleanPythonSources = <function, args: {src}>;
  cli = <derivation poetry2nix-cli-0>;
  defaultPoetryOverrides = <function>;
  mkDefaultPoetryOverrides = <function>;
  mkPoetryApplication = <function, args: {checkGroups?, extras?, groups?, meta?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?, src?}>;
  mkPoetryEditablePackage = <function, args: {editablePackageSources, projectDir?, pyProject?, pyproject?, python?}>;
  mkPoetryEnv = <function, args: {checkGroups?, editablePackageSources?, extraPackages?, extras?, groups?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?}>;
  mkPoetryPackages = <function, args: {checkGroups?, editablePackageSources?, extras?, groups?, overrides?, poetrylock?, poetrylockPos?, preferWheels?, projectDir?, pwd?, pyProject?, pyproject?, python?}>;
  mkPoetryScriptsPackage = <function, args: {projectDir?, pyProject?, pyproject?, python?, scripts?}>;
  newScope = <function>;
  overrideScope = <function>;
  overrideScope' = <function>;
  overrides = {
    withDefaults = <function>;
    withoutDefaults = <function>;
  };
  packages = <function>;
}
```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.devcontainer\.poetry2nix\.python



This option has no description\.



*Type:*
unspecified value



*Default:*
` <derivation python3-3.12.8> `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.devcontainer\.pythonEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.9.16-env> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.devcontainer\.pythonEnvArgs



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.devcontainer\.pythonPackage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)



## perSystem\.ml-ops\.devcontainer\.pythonPackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.devcontainer\.pythonPackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.devcontainer\.pythonPackage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.devcontainer\.rawNixDirenvFlakeFlags



This option has no description\.



*Type:*
strings concatenated with " "



*Default:*
` "--show-trace --override-input devenv-root path:./.devenv/state/pwd" `

*Declared by:*
 - [devcontainer\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devcontainer](flake-modules/devcontainer.nix)



## perSystem\.ml-ops\.devcontainer\.version



Version of job or service\.
This will be used as the image tag\.



*Type:*
string



*Default:*
1\.0\.0+\<lastModifiedDate>\.\<git-revision>\.\<narHash>

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.emptyDir



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.emptyDir\.\<name>\.medium



This option has no description\.



*Type:*
null or value “Memory” (singular enum)



*Default:*
` null `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.nfs



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.nfs\.\<name>\.mountOptions



This option has no description\.



*Type:*
list of string



*Default:*

```
[
  "rw"
  "intr"
  "nolock"
]
```

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.nfs\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.devcontainer\.volumeMounts\.nfs\.\<name>\.server



This option has no description\.



*Type:*
string



*Example:*
` "nfs.example.com" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.devserver\.azure\.blobname



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.azure\.containername



This option has no description\.



*Type:*
string



*Default:*
` "images" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.azure\.imageName



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.azure\.stgaccountname



This option has no description\.



*Type:*
string



*Default:*
` "mlsolutionimages" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gce\.image-bucket



This option has no description\.



*Type:*
string



*Default:*
` "ml-ops-vm-images" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gce\.image-name



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gce\.image-uri



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gceEfi\.image-bucket



This option has no description\.



*Type:*
string



*Default:*
` "ml-ops-vm-images" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gceEfi\.image-name



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.gceEfi\.image-uri



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.hyperv\.blobname



This option has no description\.



*Type:*
string

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.hyperv\.containername



This option has no description\.



*Type:*
string



*Default:*
` "images" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.devserver\.hyperv\.stgaccountname



This option has no description\.



*Type:*
string



*Default:*
` "mlsolutionimages" `

*Declared by:*
 - [devserver\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.devserver](flake-modules/devserver.nix)



## perSystem\.ml-ops\.job



The shared options among all jobs\.

For example, config of ` perSystem.ml-ops.job.xxx ` will be copied to all ` perSystem.ml-ops.jobs.<name>.xxx `\.



*Type:*
module

*Declared by:*
 - [jobs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.jobs](flake-modules/jobs.nix)



## perSystem\.ml-ops\.jobs



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [jobs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.jobs](flake-modules/jobs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.LD_LIBRARY_PATH



This option has no description\.



*Type:*
strings concatenated with “:”



*Default:*
` "" `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.cuda\.packages



This option has no description\.



*Type:*
list of package



*Default:*

```
[
  pkgs.cudaPackages.cuda_nvcc
  pkgs.cudaPackages.cudatoolkit
  pkgs.cudaPackages.cuda_cudart.lib
  pkgs.cudaPackages.libcublas
  pkgs.cudaPackages.nccl
  pkgs.cudaPackages.cudnn
]

```

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.cuda\.cudaPackages



This option has no description\.



*Type:*
attribute set of package



*Default:*
` pkgs.cudaPackages `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.cuda\.home



This option has no description\.



*Type:*
package



*Default:*
` <derivation cuda-home> `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.devenvShellModule



Common config that will be copied to ` config.devenv.shells. `*\<shell_name>*` .config ` for each shell\.

See [devenv options](https://devenv\.sh/reference/options/) for supported nested options\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.environmentVariables



Environment variables for either devcontainer, jobs or services\.

For devcontainer, these variables will be copied to via ` devenv `’s [env](https://devenv\.sh/reference/options/\#env) config\.
For kubernetes jobs and services, these variables will be copied to the Pods’ ` spec.containers.*.env ` field\.



*Type:*
lazy attribute set of string



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.glibcTunables



This option has no description\.



*Type:*
attribute set of string



*Default:*
` { } `

*Declared by:*
 - [glibc-tunables\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.glibcTunables, via option perSystem\.ml-ops\.common](flake-modules/glibc-tunables.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launcher



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launcher\.environmentVariables



This option has no description\.



*Type:*
attribute set of string

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [jobs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.jobs, via option perSystem\.ml-ops\.job](flake-modules/jobs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.environmentVariables



This option has no description\.



*Type:*
attribute set of string

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/gke-credential.nix)
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.aks



The Azure Kubernetes Service (AKS) options\.

When ` aks ` is ` null `, the AKS options are disabled\.
When ` aks ` is ` {} `, the AKS options are enabled with default values\.



*Type:*
null or (submodule)



*Default:*
` null `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.cluster



The name of the Azure Kubernetes Service (AKS) cluster to use\.



*Type:*
string



*Default:*
` "ml-aks" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.registryName



The name of the Azure Container Registry (ACR) to use\.



*Type:*
string



*Default:*
` "mlsolutionregistry" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.resourcegroup



The name of the Azure Resource Group (ARG) to use\.



*Type:*
string



*Default:*
` "ml-solutions" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\._module\.environmentVariables



This option has no description\.



*Type:*
unspecified value



*Default:*
` launchers.<name>.environmentVariables `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.args



This option has no description\.



*Type:*
null or (list of string)



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.env



This option has no description\.



*Type:*
list of anything



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.image



This option has no description\.



*Type:*
unspecified value



*Default:*
` perSystem.services|jobs.<name>.launchers.<name>.kubernetes.<name>.remoteImage `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.volumeMounts



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containers



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.containers\.\<name>\.manifest



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.devenvContainerName



This option has no description\.



*Type:*
string



*Default:*
` "processes" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.gke



The Google Kubernetes Engine (GKE) options\.

When ` gke ` is ` null `, the GKE options are disabled\.
When ` gke ` is ` {} `, the GKE options are enabled with default values\.



*Type:*
null or (submodule)



*Default:*
` null `

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.gke\.cluster



The GKE cluster name\.



*Type:*
string

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.gke\.region



The GCP region\.



*Type:*
string

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helm-chart

This option has no description\.



*Type:*
package



*Default:*
` <derivation helm-chart> `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmChartYaml



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmReleaseName



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates



Kubernetes manifests to be templated by Helm\.

For each template, the key is the base file name of the template (extension is always ` yaml `), and the value is the template itself\.



*Type:*
attribute set of attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "batch/v1" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "Job" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.metadata\.name



This option has no description\.



*Type:*
unspecified value



*Default:*

```
"${job.config._module.args.name}-${launcher.config._module.args.name}-${builtins.replaceStrings ["+"] ["-"] job.config.version}"

```

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.metadata\.namespace



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.backoffLimit



This option has no description\.



*Type:*
unspecified value



*Default:*
` 0 `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.metadata\.labels\."app\.kubernetes\.io/name"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.metadata\.labels\."app\.kubernetes\.io/namespace"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers



This option has no description\.



*Type:*
(attribute set of (attribute set of anything)) or (list of anything) convertible to it

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\._module\.environmentVariables



This option has no description\.



*Type:*
unspecified value



*Default:*
` launchers.<name>.environmentVariables `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\.args



This option has no description\.



*Type:*
null or (list of string)



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\.env



This option has no description\.



*Type:*
list of anything



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\.image



This option has no description\.



*Type:*
unspecified value



*Default:*
` perSystem.services|jobs.<name>.launchers.<name>.kubernetes.<name>.remoteImage `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.containers\.\<name>\.volumeMounts



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.restartPolicy



This option has no description\.



*Type:*
unspecified value



*Default:*
` "Never" `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.job\.spec\.template\.spec\.volumes



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes-job\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesJob, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes-job.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.extraFlags



This option has no description\.



*Type:*
strings concatenated with " "



*Default:*
` "" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.imageRegistry\.host



This option has no description\.



*Type:*
string



*Default:*
` "registry.hub.docker.com" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.imageRegistry\.path



This option has no description\.



*Type:*
null or string



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.namespace



This option has no description\.



*Type:*
string



*Default:*
` "default" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests



This option has no description\.



*Type:*
attribute set of (submodule)

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "v1" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "PersistentVolumeClaim" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.metadata\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.metadata\.namespace



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.accessModes



This option has no description\.



*Type:*
unspecified value



*Default:*

```
[
  "ReadWriteMany"
]
```

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.resources\.requests\.storage



This option has no description\.



*Type:*
unspecified value



*Default:*
` "1000Ti" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.storageClassName



This option has no description\.



*Type:*
unspecified value



*Default:*
` "" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.volumeName



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests



This option has no description\.



*Type:*
attribute set of (submodule)

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "v1" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "PersistentVolume" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.metadata\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.metadata\.namespace



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.spec



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.skopeoCopyArgs



This option has no description\.



*Type:*
list of string



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.remoteImage



This option has no description\.



*Type:*
string



*Default:*
` "registry.hub.docker.com/‹job-or-service-name›-‹launcher-name›:‹version›.‹git-rivision›.‹narHash›" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.volumeMounts



This option has no description\.



*Type:*
list of attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.kubernetes\.volumes



This option has no description\.



*Type:*
list of attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.launchers\.\<name>\.skypilot\.options\.todo-placeholder



This option has no description\.



*Type:*
unspecified value



*Default:*
` "blah blah" `

*Declared by:*
 - [skypilot\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.skypilot, via option perSystem\.ml-ops\.job, via option perSystem\.ml-ops\.jobs\.\<name>\.launcher](flake-modules/skypilot.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.enablelogging



Whether to enable logging\.



*Type:*
boolean



*Default:*
` false `



*Example:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.lasmConfig



This option has no description\.



*Type:*
YAML value



*Default:*

```
{
  rules = [
    {
      cond = {
        rtld = "any";
      };
      default = {
        prepend = [
          {
            saved = "libpath";
          }
          {
            dir = "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib";
          }
        ];
      };
      libpath = {
        save = true;
      };
    }
  ];
}
```

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.libaudit



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/2cnkqwwxnvjnycbxnyh93gfiwysfzw07-ld-audit-search-mod/lib/libld-audit-search-mod.so" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.libraries



This option has no description\.



*Type:*
list of path

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.path



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.ldFallback\.preferRunpathOverLdLibraryPath



This option has no description\.



*Type:*
boolean



*Default:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.mkPython



This option has no description\.



*Type:*
unspecified value



*Default:*
` <function> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.name



This option has no description\.



*Type:*
string



*Default:*
` "‹name›" `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.nixLdLibraries



The list of paths to be added to the ` NIX_LD_LIBRARY_PATH ` environment variable\.

This option should always be kept empty\. Set ` flakeModules.ldFallback.libraries ` instead when you want any non-empty library path\. See discussion at https://github\.com/NixOS/nixpkgs/pull/248547\#issuecomment-1995469926 about why nix-ld is not a good idea for libraries used in a project\.

Note that ` nix-ld ` is still a good idea for executing non-Nix binaries in the case of https://github\.com/nix-community/NixOS-WSL/issues/222\. When there are system level ` NIX_LD_LIBRARY_PATH ` set for ` nix-ld `, this option should be kept as empty in order to disable the system level ` NIX_LD_LIBRARY_PATH `\.



*Type:*
list of path



*Default:*
` [ ] `

*Declared by:*
 - [nix-ld\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixLd, via option perSystem\.ml-ops\.common](flake-modules/nix-ld.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetry2nix\.args



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetry2nix\.pkgs



The nix package set to use for poetry2nix\.

It is by default set to the nixpkgs from ` nix-ml-ops `’s lock file with a python package specified by ` perSystem.ml-ops.common.pythonPackage `\.



*Type:*
unspecified value



*Default:*

```
pkgs.appendOverlays [
  (self: super: {
    ${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
  })
]

```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetry2nix\.poetry2nixLib



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  callPackage = <function>;
  cleanPythonSources = <function, args: {src}>;
  cli = <derivation poetry2nix-cli-0>;
  defaultPoetryOverrides = <function>;
  mkDefaultPoetryOverrides = <function>;
  mkPoetryApplication = <function, args: {checkGroups?, extras?, groups?, meta?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?, src?}>;
  mkPoetryEditablePackage = <function, args: {editablePackageSources, projectDir?, pyProject?, pyproject?, python?}>;
  mkPoetryEnv = <function, args: {checkGroups?, editablePackageSources?, extraPackages?, extras?, groups?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?}>;
  mkPoetryPackages = <function, args: {checkGroups?, editablePackageSources?, extras?, groups?, overrides?, poetrylock?, poetrylockPos?, preferWheels?, projectDir?, pwd?, pyProject?, pyproject?, python?}>;
  mkPoetryScriptsPackage = <function, args: {projectDir?, pyProject?, pyproject?, python?, scripts?}>;
  newScope = <function>;
  overrideScope = <function>;
  overrideScope' = <function>;
  overrides = {
    withDefaults = <function>;
    withoutDefaults = <function>;
  };
  packages = <function>;
}
```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetry2nix\.python



This option has no description\.



*Type:*
unspecified value



*Default:*
` <derivation python3-3.12.8> `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetryApplication



This option has no description\.



*Type:*
package



*Default:*
` mkPoetryApplication poetryApplicationArgs `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetryApplicationArgs



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetryApplicationDependencyEnv



This option has no description\.



*Type:*
package



*Default:*
` poetryApplication.dependencyEnv.override { ignoreCollisions = true; } `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetryEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.12.8-env> `

*Declared by:*
 - [python-envs-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPoetry, via option perSystem\.ml-ops\.runtime](flake-modules/python-envs-poetry.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.poetryEnvArgs



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [python-envs-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPoetry, via option perSystem\.ml-ops\.runtime](flake-modules/python-envs-poetry.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.9.16-env> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonEnvArgs



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonPackage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonPackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonPackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.pythonPackage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.version



Version of job or service\.
This will be used as the image tag\.



*Type:*
string



*Default:*
1\.0\.0+\<lastModifiedDate>\.\<git-revision>\.\<narHash>

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.emptyDir



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.emptyDir\.\<name>\.kubernetesInlineVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  emptyDir = {
    medium = null;
  };
}
```

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.emptyDir\.\<name>\.medium



This option has no description\.



*Type:*
null or value “Memory” (singular enum)



*Default:*
` null `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.local



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.local\.\<name>\.kubernetesVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.local\.\<name>\.nodeAffinity



This option has no description\.



*Type:*
attribute set of anything



*Default:*

```
{
  required = {
    nodeSelectorTerms = [
      {
        matchExpressions = [
          {
            key = "kubernetes.io/hostname";
            operator = "Exists";
          }
        ];
      }
    ];
  };
}
```

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.local\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.nfs



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.nfs\.\<name>\.kubernetesVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.nfs\.\<name>\.mountOptions



This option has no description\.



*Type:*
list of string



*Default:*

```
[
  "rw"
  "intr"
  "nolock"
]
```

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.nfs\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.jobs\.\<name>\.volumeMounts\.nfs\.\<name>\.server



This option has no description\.



*Type:*
string



*Example:*
` "nfs.example.com" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.overridablePackage



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.overridablePackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.overridablePackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.overridablePackage\.pipe

This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.runtime



Common config shared among all ` ml-ops.jobs.<name> ` and ` ml-ops.services.<name> `\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.runtime\.LD_LIBRARY_PATH



This option has no description\.



*Type:*
strings concatenated with “:”



*Default:*
` "" `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.runtime\.cuda\.packages



This option has no description\.



*Type:*
list of package



*Default:*

```
[
  pkgs.cudaPackages.cuda_nvcc
  pkgs.cudaPackages.cudatoolkit
  pkgs.cudaPackages.cuda_cudart.lib
  pkgs.cudaPackages.libcublas
  pkgs.cudaPackages.nccl
  pkgs.cudaPackages.cudnn
]

```

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.runtime\.cuda\.cudaPackages



This option has no description\.



*Type:*
attribute set of package



*Default:*
` pkgs.cudaPackages `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.runtime\.cuda\.home



This option has no description\.



*Type:*
package



*Default:*
` <derivation cuda-home> `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.runtime\.devenvShellModule



Common config that will be copied to ` config.devenv.shells. `*\<shell_name>*` .config ` for each shell\.

See [devenv options](https://devenv\.sh/reference/options/) for supported nested options\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.runtime\.environmentVariables



Environment variables for either devcontainer, jobs or services\.

For devcontainer, these variables will be copied to via ` devenv `’s [env](https://devenv\.sh/reference/options/\#env) config\.
For kubernetes jobs and services, these variables will be copied to the Pods’ ` spec.containers.*.env ` field\.



*Type:*
lazy attribute set of string



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.runtime\.glibcTunables



This option has no description\.



*Type:*
attribute set of string



*Default:*
` { } `

*Declared by:*
 - [glibc-tunables\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.glibcTunables, via option perSystem\.ml-ops\.common](flake-modules/glibc-tunables.nix)



## perSystem\.ml-ops\.runtime\.launcher



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.runtime\.launcher\.environmentVariables



This option has no description\.



*Type:*
attribute set of string

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.enablelogging



Whether to enable logging\.



*Type:*
boolean



*Default:*
` false `



*Example:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.lasmConfig



This option has no description\.



*Type:*
YAML value



*Default:*

```
{
  rules = [
    {
      cond = {
        rtld = "any";
      };
      default = {
        prepend = [
          {
            saved = "libpath";
          }
          {
            dir = "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib";
          }
        ];
      };
      libpath = {
        save = true;
      };
    }
  ];
}
```

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.libaudit



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/2cnkqwwxnvjnycbxnyh93gfiwysfzw07-ld-audit-search-mod/lib/libld-audit-search-mod.so" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.libraries



This option has no description\.



*Type:*
list of path

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.path



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.ldFallback\.preferRunpathOverLdLibraryPath



This option has no description\.



*Type:*
boolean



*Default:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.runtime\.mkPython



This option has no description\.



*Type:*
unspecified value



*Default:*
` <function> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.runtime\.name



This option has no description\.



*Type:*
string



*Default:*
` "‹name›" `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.runtime\.nixLdLibraries



The list of paths to be added to the ` NIX_LD_LIBRARY_PATH ` environment variable\.

This option should always be kept empty\. Set ` flakeModules.ldFallback.libraries ` instead when you want any non-empty library path\. See discussion at https://github\.com/NixOS/nixpkgs/pull/248547\#issuecomment-1995469926 about why nix-ld is not a good idea for libraries used in a project\.

Note that ` nix-ld ` is still a good idea for executing non-Nix binaries in the case of https://github\.com/nix-community/NixOS-WSL/issues/222\. When there are system level ` NIX_LD_LIBRARY_PATH ` set for ` nix-ld `, this option should be kept as empty in order to disable the system level ` NIX_LD_LIBRARY_PATH `\.



*Type:*
list of path



*Default:*
` [ ] `

*Declared by:*
 - [nix-ld\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixLd, via option perSystem\.ml-ops\.common](flake-modules/nix-ld.nix)



## perSystem\.ml-ops\.runtime\.poetry2nix\.args



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.runtime\.poetry2nix\.pkgs



The nix package set to use for poetry2nix\.

It is by default set to the nixpkgs from ` nix-ml-ops `’s lock file with a python package specified by ` perSystem.ml-ops.common.pythonPackage `\.



*Type:*
unspecified value



*Default:*

```
pkgs.appendOverlays [
  (self: super: {
    ${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
  })
]

```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.runtime\.poetry2nix\.poetry2nixLib



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  callPackage = <function>;
  cleanPythonSources = <function, args: {src}>;
  cli = <derivation poetry2nix-cli-0>;
  defaultPoetryOverrides = <function>;
  mkDefaultPoetryOverrides = <function>;
  mkPoetryApplication = <function, args: {checkGroups?, extras?, groups?, meta?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?, src?}>;
  mkPoetryEditablePackage = <function, args: {editablePackageSources, projectDir?, pyProject?, pyproject?, python?}>;
  mkPoetryEnv = <function, args: {checkGroups?, editablePackageSources?, extraPackages?, extras?, groups?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?}>;
  mkPoetryPackages = <function, args: {checkGroups?, editablePackageSources?, extras?, groups?, overrides?, poetrylock?, poetrylockPos?, preferWheels?, projectDir?, pwd?, pyProject?, pyproject?, python?}>;
  mkPoetryScriptsPackage = <function, args: {projectDir?, pyProject?, pyproject?, python?, scripts?}>;
  newScope = <function>;
  overrideScope = <function>;
  overrideScope' = <function>;
  overrides = {
    withDefaults = <function>;
    withoutDefaults = <function>;
  };
  packages = <function>;
}
```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.runtime\.poetry2nix\.python



This option has no description\.



*Type:*
unspecified value



*Default:*
` <derivation python3-3.12.8> `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.runtime\.pythonEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.9.16-env> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.runtime\.pythonEnvArgs



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.runtime\.pythonPackage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)



## perSystem\.ml-ops\.runtime\.pythonPackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.runtime\.pythonPackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.runtime\.pythonPackage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.runtime\.version



Version of job or service\.
This will be used as the image tag\.



*Type:*
string



*Default:*
1\.0\.0+\<lastModifiedDate>\.\<git-revision>\.\<narHash>

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.emptyDir



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.emptyDir\.\<name>\.medium



This option has no description\.



*Type:*
null or value “Memory” (singular enum)



*Default:*
` null `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.nfs



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.nfs\.\<name>\.mountOptions



This option has no description\.



*Type:*
list of string



*Default:*

```
[
  "rw"
  "intr"
  "nolock"
]
```

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.nfs\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.runtime\.volumeMounts\.nfs\.\<name>\.server



This option has no description\.



*Type:*
string



*Example:*
` "nfs.example.com" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.service



The shared options among all services\.

For example, config of ` perSystem.ml-ops.service.xxx ` will be copied to all ` perSystem.ml-ops.services.<name>.xxx `\.



*Type:*
module

*Declared by:*
 - [services\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.services](flake-modules/services.nix)



## perSystem\.ml-ops\.services



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [services\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.services](flake-modules/services.nix)



## perSystem\.ml-ops\.services\.\<name>\.LD_LIBRARY_PATH



This option has no description\.



*Type:*
strings concatenated with “:”



*Default:*
` "" `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.services\.\<name>\.cuda\.packages



This option has no description\.



*Type:*
list of package



*Default:*

```
[
  pkgs.cudaPackages.cuda_nvcc
  pkgs.cudaPackages.cudatoolkit
  pkgs.cudaPackages.cuda_cudart.lib
  pkgs.cudaPackages.libcublas
  pkgs.cudaPackages.nccl
  pkgs.cudaPackages.cudnn
]

```

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.services\.\<name>\.cuda\.cudaPackages



This option has no description\.



*Type:*
attribute set of package



*Default:*
` pkgs.cudaPackages `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.services\.\<name>\.cuda\.home



This option has no description\.



*Type:*
package



*Default:*
` <derivation cuda-home> `

*Declared by:*
 - [cuda\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.cuda, via option perSystem\.ml-ops\.common](flake-modules/cuda.nix)



## perSystem\.ml-ops\.services\.\<name>\.devenvShellModule



Common config that will be copied to ` config.devenv.shells. `*\<shell_name>*` .config ` for each shell\.

See [devenv options](https://devenv\.sh/reference/options/) for supported nested options\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.services\.\<name>\.environmentVariables



Environment variables for either devcontainer, jobs or services\.

For devcontainer, these variables will be copied to via ` devenv `’s [env](https://devenv\.sh/reference/options/\#env) config\.
For kubernetes jobs and services, these variables will be copied to the Pods’ ` spec.containers.*.env ` field\.



*Type:*
lazy attribute set of string



*Default:*
` { } `

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.services\.\<name>\.glibcTunables



This option has no description\.



*Type:*
attribute set of string



*Default:*
` { } `

*Declared by:*
 - [glibc-tunables\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.glibcTunables, via option perSystem\.ml-ops\.common](flake-modules/glibc-tunables.nix)



## perSystem\.ml-ops\.services\.\<name>\.launcher



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.services\.\<name>\.launcher\.environmentVariables



This option has no description\.



*Type:*
attribute set of string

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [services\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.services, via option perSystem\.ml-ops\.service](flake-modules/services.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.environmentVariables



This option has no description\.



*Type:*
attribute set of string

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/gke-credential.nix)
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.aks



The Azure Kubernetes Service (AKS) options\.

When ` aks ` is ` null `, the AKS options are disabled\.
When ` aks ` is ` {} `, the AKS options are enabled with default values\.



*Type:*
null or (submodule)



*Default:*
` null `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.cluster



The name of the Azure Kubernetes Service (AKS) cluster to use\.



*Type:*
string



*Default:*
` "ml-aks" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.registryName



The name of the Azure Container Registry (ACR) to use\.



*Type:*
string



*Default:*
` "mlsolutionregistry" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.aks\.resourcegroup



The name of the Azure Resource Group (ARG) to use\.



*Type:*
string



*Default:*
` "ml-solutions" `

*Declared by:*
 - [aks-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.aksCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/aks-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\._module\.environmentVariables



This option has no description\.



*Type:*
unspecified value



*Default:*
` launchers.<name>.environmentVariables `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.args



This option has no description\.



*Type:*
null or (list of string)



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.env



This option has no description\.



*Type:*
list of anything



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.image



This option has no description\.



*Type:*
unspecified value



*Default:*
` perSystem.services|jobs.<name>.launchers.<name>.kubernetes.<name>.remoteImage `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containerManifest\.volumeMounts



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containers



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.containers\.\<name>\.manifest



This option has no description\.



*Type:*
module



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.devenvContainerName



This option has no description\.



*Type:*
string



*Default:*
` "processes" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.gke



The Google Kubernetes Engine (GKE) options\.

When ` gke ` is ` null `, the GKE options are disabled\.
When ` gke ` is ` {} `, the GKE options are enabled with default values\.



*Type:*
null or (submodule)



*Default:*
` null `

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.gke\.cluster



The GKE cluster name\.



*Type:*
string

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.gke\.region



The GCP region\.



*Type:*
string

*Declared by:*
 - [gke-credential\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.gkeCredential, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/gke-credential.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helm-chart



This option has no description\.



*Type:*
package



*Default:*
` <derivation helm-chart> `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmChartYaml



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmDelete\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmReleaseName



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates



Kubernetes manifests to be templated by Helm\.

For each template, the key is the base file name of the template (extension is always ` yaml `), and the value is the template itself\.



*Type:*
attribute set of attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment



This option has no description\.



*Type:*
attribute set of attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "apps/v1" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "Deployment" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.metadata\.name



This option has no description\.



*Type:*
unspecified value



*Default:*

```
"${service.config._module.args.name}-${launcher.config._module.args.name}"

```

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.metadata\.namespace



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.selector\.matchLabels\."app\.kubernetes\.io/name"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.selector\.matchLabels\."app\.kubernetes\.io/namespace"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.metadata\.labels\."app\.kubernetes\.io/name"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.metadata\.labels\."app\.kubernetes\.io/namespace"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers



This option has no description\.



*Type:*
(attribute set of (attribute set of anything)) or (list of anything) convertible to it

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\._module\.environmentVariables



This option has no description\.



*Type:*
unspecified value



*Default:*
` launchers.<name>.environmentVariables `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\.args



This option has no description\.



*Type:*
null or (list of string)



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\.env



This option has no description\.



*Type:*
list of anything



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\.image



This option has no description\.



*Type:*
unspecified value



*Default:*
` perSystem.services|jobs.<name>.launchers.<name>.kubernetes.<name>.remoteImage `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.containers\.\<name>\.volumeMounts



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.deployment\.spec\.template\.spec\.volumes



This option has no description\.



*Type:*
unspecified value



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service



This option has no description\.



*Type:*
null or (attribute set of anything)



*Default:*
` null `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "v1" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "Service" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.metadata\.name



This option has no description\.



*Type:*
unspecified value



*Default:*

```
"${service.config._module.args.name}-${launcher.config._module.args.name}"

```

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.metadata\.namespace



This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.spec\.ports



This option has no description\.



*Type:*
list of anything



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.spec\.selector\."app\.kubernetes\.io/name"



This option has no description\.



*Type:*
unspecified value



*Default:*
` "‹name›-‹name›" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.spec\.selector\."app\.kubernetes\.io/namespace"

This option has no description\.



*Type:*
unspecified value



*Default:*
` "default" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmTemplates\.service\.spec\.type



This option has no description\.



*Type:*
unspecified value



*Default:*
` "LoadBalancer" `

*Declared by:*
 - [kubernetes-service\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetesService, via option perSystem\.ml-ops\.service, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes-service.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUninstall\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.extraFlags



This option has no description\.



*Type:*
strings concatenated with " "



*Default:*
` "" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.helmUpgrade\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.imageRegistry\.host



This option has no description\.



*Type:*
string



*Default:*
` "registry.hub.docker.com" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.imageRegistry\.path



This option has no description\.



*Type:*
null or string



*Default:*
` null `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.namespace



This option has no description\.



*Type:*
string



*Default:*
` "default" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests



This option has no description\.



*Type:*
attribute set of (submodule)

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "v1" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "PersistentVolumeClaim" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.metadata\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.metadata\.namespace



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.accessModes



This option has no description\.



*Type:*
unspecified value



*Default:*

```
[
  "ReadWriteMany"
]
```

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.resources\.requests\.storage



This option has no description\.



*Type:*
unspecified value



*Default:*
` "1000Ti" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.storageClassName



This option has no description\.



*Type:*
unspecified value



*Default:*
` "" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeClaimManifests\.\<name>\.spec\.volumeName



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests



This option has no description\.



*Type:*
attribute set of (submodule)

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.apiVersion



This option has no description\.



*Type:*
unspecified value



*Default:*
` "v1" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.kind



This option has no description\.



*Type:*
unspecified value



*Default:*
` "PersistentVolume" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.metadata\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.metadata\.namespace



This option has no description\.



*Type:*
string

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.persistentVolumeManifests\.\<name>\.spec



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.pushImage\.skopeoCopyArgs



This option has no description\.



*Type:*
list of string



*Default:*
` [ ] `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.remoteImage



This option has no description\.



*Type:*
string



*Default:*
` "registry.hub.docker.com/‹job-or-service-name›-‹launcher-name›:‹version›.‹git-rivision›.‹narHash›" `

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.volumeMounts



This option has no description\.



*Type:*
list of attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.launchers\.\<name>\.kubernetes\.volumes



This option has no description\.



*Type:*
list of attribute set of anything

*Declared by:*
 - [kubernetes\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.kubernetes, via option perSystem\.ml-ops\.runtime, via option perSystem\.ml-ops\.services\.\<name>\.launcher](flake-modules/kubernetes.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.enablelogging



Whether to enable logging\.



*Type:*
boolean



*Default:*
` false `



*Example:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.lasmConfig



This option has no description\.



*Type:*
YAML value



*Default:*

```
{
  rules = [
    {
      cond = {
        rtld = "any";
      };
      default = {
        prepend = [
          {
            saved = "libpath";
          }
          {
            dir = "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib";
          }
        ];
      };
      libpath = {
        save = true;
      };
    }
  ];
}
```

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.libaudit



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/2cnkqwwxnvjnycbxnyh93gfiwysfzw07-ld-audit-search-mod/lib/libld-audit-search-mod.so" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.libraries



This option has no description\.



*Type:*
list of path

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.path



This option has no description\.



*Type:*
path



*Default:*
` "/nix/store/yv9d4q0l2qlcr4nvi7m00axq9pwfc4s1-ld-fallback-path/lib" `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.ldFallback\.preferRunpathOverLdLibraryPath



This option has no description\.



*Type:*
boolean



*Default:*
` true `

*Declared by:*
 - [ld-fallback\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.ldFallback, via option perSystem\.ml-ops\.common](flake-modules/ld-fallback.nix)



## perSystem\.ml-ops\.services\.\<name>\.mkPython



This option has no description\.



*Type:*
unspecified value



*Default:*
` <function> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.services\.\<name>\.name



This option has no description\.



*Type:*
string



*Default:*
` "‹name›" `

*Declared by:*
 - [runtime\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.runtime](flake-modules/runtime.nix)



## perSystem\.ml-ops\.services\.\<name>\.nixLdLibraries



The list of paths to be added to the ` NIX_LD_LIBRARY_PATH ` environment variable\.

This option should always be kept empty\. Set ` flakeModules.ldFallback.libraries ` instead when you want any non-empty library path\. See discussion at https://github\.com/NixOS/nixpkgs/pull/248547\#issuecomment-1995469926 about why nix-ld is not a good idea for libraries used in a project\.

Note that ` nix-ld ` is still a good idea for executing non-Nix binaries in the case of https://github\.com/nix-community/NixOS-WSL/issues/222\. When there are system level ` NIX_LD_LIBRARY_PATH ` set for ` nix-ld `, this option should be kept as empty in order to disable the system level ` NIX_LD_LIBRARY_PATH `\.



*Type:*
list of path



*Default:*
` [ ] `

*Declared by:*
 - [nix-ld\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.nixLd, via option perSystem\.ml-ops\.common](flake-modules/nix-ld.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetry2nix\.args



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetry2nix\.pkgs



The nix package set to use for poetry2nix\.

It is by default set to the nixpkgs from ` nix-ml-ops `’s lock file with a python package specified by ` perSystem.ml-ops.common.pythonPackage `\.



*Type:*
unspecified value



*Default:*

```
pkgs.appendOverlays [
  (self: super: {
    ${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
  })
]

```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetry2nix\.poetry2nixLib



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  callPackage = <function>;
  cleanPythonSources = <function, args: {src}>;
  cli = <derivation poetry2nix-cli-0>;
  defaultPoetryOverrides = <function>;
  mkDefaultPoetryOverrides = <function>;
  mkPoetryApplication = <function, args: {checkGroups?, extras?, groups?, meta?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?, src?}>;
  mkPoetryEditablePackage = <function, args: {editablePackageSources, projectDir?, pyProject?, pyproject?, python?}>;
  mkPoetryEnv = <function, args: {checkGroups?, editablePackageSources?, extraPackages?, extras?, groups?, overrides?, poetrylock?, preferWheels?, projectDir?, pwd?, pyproject?, python?}>;
  mkPoetryPackages = <function, args: {checkGroups?, editablePackageSources?, extras?, groups?, overrides?, poetrylock?, poetrylockPos?, preferWheels?, projectDir?, pwd?, pyProject?, pyproject?, python?}>;
  mkPoetryScriptsPackage = <function, args: {projectDir?, pyProject?, pyproject?, python?, scripts?}>;
  newScope = <function>;
  overrideScope = <function>;
  overrideScope' = <function>;
  overrides = {
    withDefaults = <function>;
    withoutDefaults = <function>;
  };
  packages = <function>;
}
```

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetry2nix\.python



This option has no description\.



*Type:*
unspecified value



*Default:*
` <derivation python3-3.12.8> `

*Declared by:*
 - [poetry2nix\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nix, via option perSystem\.ml-ops\.common](flake-modules/poetry2nix.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetryApplication



This option has no description\.



*Type:*
package



*Default:*
` mkPoetryApplication poetryApplicationArgs `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetryApplicationArgs



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetryApplicationDependencyEnv



This option has no description\.



*Type:*
package



*Default:*
` poetryApplication.dependencyEnv.override { ignoreCollisions = true; } `

*Declared by:*
 - [poetry2nix-application\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.poetry2nixApplication, via option perSystem\.ml-ops\.runtime](flake-modules/poetry2nix-application.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetryEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.12.8-env> `

*Declared by:*
 - [python-envs-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPoetry, via option perSystem\.ml-ops\.runtime](flake-modules/python-envs-poetry.nix)



## perSystem\.ml-ops\.services\.\<name>\.poetryEnvArgs



This option has no description\.



*Type:*
attribute set of anything



*Default:*
` { } `

*Declared by:*
 - [python-envs-poetry\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPoetry, via option perSystem\.ml-ops\.runtime](flake-modules/python-envs-poetry.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonEnv



This option has no description\.



*Type:*
package



*Default:*
` <derivation python3-3.9.16-env> `

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonEnvArgs



This option has no description\.



*Type:*
attribute set of anything

*Declared by:*
 - [python-envs-pep508\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonEnvsPep508, via option perSystem\.ml-ops\.common](flake-modules/python-envs-pep508.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonPackage



This option has no description\.



*Type:*
submodule



*Default:*
` { } `

*Declared by:*
 - [python-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.pythonPackage](flake-modules/python-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonPackage\.base-package



This option has no description\.



*Type:*
package



*Example:*
` <derivation hello-2.12.1> `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonPackage\.overridden-package



This option has no description\.



*Type:*
package



*Default:*
applied ` base-package ` with ` pipe `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.pythonPackage\.pipe



This option has no description\.



*Type:*
list of function that evaluates to a(n) package



*Default:*
` [ ] `

*Declared by:*
 - [overridable-package\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.overridablePackage](flake-modules/overridable-package.nix)



## perSystem\.ml-ops\.services\.\<name>\.version



Version of job or service\.
This will be used as the image tag\.



*Type:*
string



*Default:*
1\.0\.0+\<lastModifiedDate>\.\<git-revision>\.\<narHash>

*Declared by:*
 - [common\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.common](flake-modules/common.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.emptyDir



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.emptyDir\.\<name>\.kubernetesInlineVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

```
{
  emptyDir = {
    medium = null;
  };
}
```

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.emptyDir\.\<name>\.medium



This option has no description\.



*Type:*
null or value “Memory” (singular enum)



*Default:*
` null `

*Declared by:*
 - [volume-mount-empty-dir\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountEmptyDir, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-empty-dir.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.local



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.local\.\<name>\.kubernetesVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.local\.\<name>\.nodeAffinity



This option has no description\.



*Type:*
attribute set of anything



*Default:*

```
{
  required = {
    nodeSelectorTerms = [
      {
        matchExpressions = [
          {
            key = "kubernetes.io/hostname";
            operator = "Exists";
          }
        ];
      }
    ];
  };
}
```

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.local\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-local\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountLocal, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-local.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.nfs



This option has no description\.



*Type:*
attribute set of (submodule)



*Default:*
` { } `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.nfs\.\<name>\.kubernetesVolume



This option has no description\.



*Type:*
unspecified value



*Default:*

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.runtime](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.nfs\.\<name>\.mountOptions



This option has no description\.



*Type:*
list of string



*Default:*

```
[
  "rw"
  "intr"
  "nolock"
]
```

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.nfs\.\<name>\.path



This option has no description\.



*Type:*
string



*Example:*
` "/ml_data" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)



## perSystem\.ml-ops\.services\.\<name>\.volumeMounts\.nfs\.\<name>\.server



This option has no description\.



*Type:*
string



*Example:*
` "nfs.example.com" `

*Declared by:*
 - [volume-mount-nfs\.nix, via option partitions\.dev\.module\.flake\.flakeModules\.volumeMountNfs, via option perSystem\.ml-ops\.common](flake-modules/volume-mount-nfs.nix)


