<p align="center">
    <h1 align="center">
        Power Platform development with GitHub - Demonstration
    </h1>
    <h3 align="center">
        Repository for demonstrations of Power Platform development with GitHub
    </h3>
</p>

<p align="center">
    <a href="https://github.com/rpothin/PowerPlatform-Development-With-GitHub-Demo/blob/main/LICENSE" alt="Repository License">
        <img src="https://img.shields.io/github/license/rpothin/PowerPlatform-Development-With-GitHub-Demo?color=yellow&label=License" /></a>
</p>

<p align="center">
    <a href="#watchers" alt="Watchers">
        <img src="https://img.shields.io/github/watchers/rpothin/PowerPlatform-Development-With-GitHub-Demo?style=social" /></a>
    <a href="#forks" alt="Forks">
        <img src="https://img.shields.io/github/forks/rpothin/PowerPlatform-Development-With-GitHub-Demo?style=social" /></a>
    <a href="#stars" alt="Stars">
        <img src="https://img.shields.io/github/stars/rpothin/PowerPlatform-Development-With-GitHub-Demo?style=social" /></a>
</p>

## 📢 What is the Power Platform Development With GitHub Demo project?

It is a GitHub repository used for demonstrations of Power Platform development with GitHub.

## 📖 Documentation

### Prerequisites

- Initialize the **solutions** and **components** folders
- Initialize a Dataverse solution project under the **solutions** folder using the [pac solution init](https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/solution#pac-solution-init) command

> **Note**
> This repository is built to be used with GitHub Codespaces to easily have the right tools directly available.

### Step by step process

1. Go to the **components** folder running `cd ./components`
2. Create a new folder for the your new component running a command like the following one: `mkdir component0`
3. Initialize a project for a PCF component project running a command like the following one: `pac pcf init --namespace DemoNamespace --name Component0 --template field --framework react --run-npm-install`
4. Run `npm run build` to build your component
5. Run `npm start watch` to start a debugging session - then stop it (*using `CTRL + C` in the **Terminal** for example*)
6. Go to the **solutions/PowerPlatformDevWithGitHub** folder running `cd ../../solutions/PowerPlatformDevWithGitHub/`
7. Add the new component to the solution running a command like the following one: `pac solution add-reference --path ../../components/component0`
8. Run the `dotnet msbuild /t:build /restore` command to build the solution
9. Run the `pac solution import --path ./bin/Debug/PowerPlatformDevWithGitHub.zip --async --publish-changes` command to import the solution to the selected environment

> **Note**
> - [pac pcf init](https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/pcf#pac-pcf-init)
> - [pac solution add-reference](https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/solution#pac-solution-add-reference)
> - [pac solution import](https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/solution#pac-solution-import)

### Tips

- Use `dotnet msbuild /t:build /restore` in place of `msbuild /t:build /restore` in a GitHub Codespace

## 📝 License

All files in this repository are subject to the [MIT](LICENSE) license.