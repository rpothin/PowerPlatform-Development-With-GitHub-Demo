<#
    .SYNOPSIS
        Initialize a new PCF component in the repository.
    .DESCRIPTION
        - Creates a new folder for the component
        - Initialize the component
        - Add the component to the Dataverse solution
    .INPUTS
        None.
    .OUTPUTS
        None.
    .EXAMPLE
        PS> .\initialize-pcf-component.ps1
    .LINK
        https://github.com/rpothin/PowerPlatform-Development-With-GitHub-Demo
    .NOTES
        None.
#>

[CmdletBinding()] param ()

#region Variables

# Base of the path to files and folders in GitHub Codespaces for this repository
$basePath = "/workspaces/PowerPlatform-Development-With-GitHub-Demo"
# Name of the Dataverse solution where the PCF components are added
$solutionName = "PowerPlatformDevWithGitHub"
# Namespace used for the initialization of the PCF component
$pcfComponentNamespace = "DemoNamespace"

# Name of the PCF component to initialized
$pcfComponentName = Read-Host "Enter the name of the PCF component to initialize (e.g. component0)"

# Type of the PCF component to initialized
$pcfComponentType = Read-Host "Enter the type of the PCF component to initialize (field or dataset)"

#endregion Variables

#region Initialize component

# Create a new folder for the component
cd "$basePath/components"
mkdir $pcfComponentName

# Run pac pcf init
cd "$basePath/components/$pcfComponentName"
pac pcf init --namespace $pcfComponentNamespace --name $pcfComponentName --template $pcfComponentType --framework react --run-npm-install

# Validate the component
npm run build

# Add the component to the Dataverse solution
cd "$basePath/solutions/$solutionName"
pac solution add-reference --path "$basePath/components/$pcfComponentName"

#endregion Initialize component