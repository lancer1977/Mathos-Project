# Agent Notes

## Scope

This repository is a legacy .NET Framework solution. Prefer small maintenance changes that preserve the existing Visual Studio project structure.

## Validation

Run:

```bash
./scripts/validate.sh
```

On Windows with Visual Studio Build Tools, this compiles the core library and MSTest project. On Linux without legacy MSBuild, the script records a toolchain skip.

## Conventions

- Do not convert projects to SDK-style format as part of routine maintenance.
- Keep generated Visual Studio output out of version control.
- Update `repo-state.md` when repository stewardship status changes.
