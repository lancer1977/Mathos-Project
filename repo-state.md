# Repo State

Last reviewed: 2026-07-03

## Status

Mathos Project is a legacy .NET Framework 4.0 mathematics library and sample application repository. The repo has source, tests, and Visual Studio solution files, but requires Windows MSBuild or Visual Studio Build Tools for full validation.

## Validation

- `./scripts/validate.sh`
- CI runs the same entrypoint on `windows-latest` with MSBuild configured.

## Steward Notes

- Documentation spine restored.
- Validation entrypoint added.
- Avoid framework migration in routine stewardship slices.
