#!/bin/bash

set -ex

if [[ "$CU_VERSION" == "cu92" ]]; then
  export VS_YEAR=2017
  export VSDEVCMD_ARGS="-vcvars_ver=14.13"
  powershell packaging/windows/internal/vs2017_install.ps1
elif [[ "$CU_VERSION" == "cu100" ]]; then
  export VS_YEAR=2017
  export VSDEVCMD_ARGS=""
  powershell packaging/windows/internal/vs2017_install.ps1
else
  export VS_YEAR=2022
  export VSDEVCMD_ARGS=""
  powershell packaging/windows/internal/vs2022_install.ps1
fi
