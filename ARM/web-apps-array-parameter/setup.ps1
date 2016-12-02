# installs the web-apps-array-parameter template
# usage setup.ps1 [-remote] -resourceGroupName <rg_name> 
#

param(
    [switch] $remote,
    [string] $resourceGroupName
)

$baseUrl = "https://raw.githubusercontent.com/nunoms/Azure-Automation/master/ARM/web-apps-array-parameter"
$templateUri = "$baseUrl/azureDeploy.json"
$parameterUri = "$baseUrl/azureDeploy.parameters.json"

Write-Host "`nChecking if resource group already exists..." -ForegroundColor Cyan -NoNewline
$rg = Get-AzureRmResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

# creates the resource group if it doesn't exist
if ($rg) {
    Write-Host "Found it!" -ForegroundColor Green
}
else {
    Write-Host "Not Found!" -ForegroundColor Yellow
    Write-Host "`nCreating a new resource group with name $resourceGroupName" -ForegroundColor Cyan
    New-AzureRmResourceGroup -Name $resourceGroupName -ErrorAction Stop
}

# installs the template
if ($remote) {
    Write-Host "`nInstalling template from $templateUri" -ForegroundColor Yellow
    New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri $templateUri -TemplateParameterUri $parameterUri
}
else {
    Write-Host "`nInstalling azureDeploy.json template" -ForegroundColor Yellow
    New-AzureRMResourceGroupDeployment -TemplateFile .\azureDeploy.json -TemplateParameterFile .\azureDeploy.parameters.json
}

