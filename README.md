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

> **Note**
> This repository is built to be used with GitHub Codespaces to easily have the right tools directly available.

### Work on a GitHub issue

1. Open the [PowerPlatform-Development-With-GitHub-Demo](https://github.com/users/rpothin/projects/4/views/1) project to manage the backlog of work related to this repository
2. Create an item from the project - *its status will automatically be set to **Not Yet Planned ⁉***
3. Add labels to the item to make it more understandable - *when doing this step the item will be converted to an issue in the current project*
4. When the team is ready to work on an issue, set its status to **Planned 📅** and assign it
5. When starting to work on an issue, the first thing to do will be to set the status to **In Progress ⚒** and to initialize a branch with the following name format: `work/**`
6. Work on the issue
7. On each push in the **components** folder in your branch, a new version of the Dataverse solution will be deployed to the development environment configured in the GitHub repository
8. When the work is ready for validation, create a pull request
9. Once the pull request has been reviewed, approved and the changes pushed to the main branch, they will be deploy to the other environments until the production

### Create a new PCF component

1. Open a GitHub Codespace (*the `Code` green button on the main page of the repository > `Codespaces` tab*)
2. In the **Terminal** run the following command from the root of the repository: `pwsh ./scripts/initialize-pcf-component.ps1`
3. Under the name of the PCF component you want to create when you see the corresponding question
4. Select the type of the PCF component you want to create when you the corresponding question
5. Validate the changes in the **Source Control** pane in the GitHub Codespace and push them if everything seems ok

### Manage a code scanning alert

...

## 📝 License

All files in this repository are subject to the [MIT](LICENSE) license.