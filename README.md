# Mathos Project

Mathos is a legacy .NET Framework mathematics library and companion application set. The core library includes arithmetic helpers, complex numbers, fractions, geometry, statistics, finance, unit conversion, sequences, matrices, vectors, and special functions.

The repository also contains MSTest coverage, an ASP.NET Web Forms laboratory site, a project website, and a WPF interactive mathematics application.

## Repository Layout

- `Mathos/` - core .NET Framework 4.0 class library.
- `MathosTest/` - MSTest coverage for the core library.
- `Interactive Mathematics/` - WPF desktop application.
- `Laboratory/` - ASP.NET Web Forms laboratory application.
- `ProjectWebsite/` - ASP.NET Web Forms project website.
- `Mathos.sln` - top-level Visual Studio solution.

## Requirements

- Windows with Visual Studio or Build Tools that provide MSBuild for .NET Framework projects.
- Visual Studio test tooling for running the MSTest suite.

This is a .NET Framework 4.0 codebase. The modern cross-platform `dotnet` SDK is not enough to build the solution on Linux by itself.

## Validation

Run the repository validation entrypoint:

```bash
./scripts/validate.sh
```

On a Windows machine with MSBuild available, the script compiles the core library and test project in Release mode. On systems without legacy MSBuild, it exits successfully with an explicit skip message so Steward automation can still distinguish a missing toolchain from a repository failure.

## Package

The historical NuGet install command was:

```powershell
Install-Package Mathos
```

## Related Projects

- [Java port](https://github.com/MathosProject/Mathos-Project-Java)
