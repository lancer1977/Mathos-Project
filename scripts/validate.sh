#!/usr/bin/env bash
set -euo pipefail

if [[ -n "${MSBUILD_EXE:-}" ]]; then
  msbuild_cmd="$MSBUILD_EXE"
elif command -v msbuild >/dev/null 2>&1; then
  msbuild_cmd="msbuild"
else
  echo "Skipping legacy .NET Framework build: MSBuild is not available."
  echo "Install Visual Studio Build Tools or run CI on windows-latest for full validation."
  exit 0
fi

"$msbuild_cmd" Mathos/Mathos.csproj -p:Configuration=Release -p:Platform=AnyCPU -restore
"$msbuild_cmd" MathosTest/MathosTest.csproj -p:Configuration=Release -p:Platform=AnyCPU -restore

echo "Mathos Project validation passed"
