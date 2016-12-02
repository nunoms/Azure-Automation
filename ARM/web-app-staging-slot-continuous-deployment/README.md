# Web App with Diagnostic Logs

This templates enables a simple continuous deployment scenario.

- Creates a web app with a staging slot linked to a GitHub repository
- Configures the staging slot to auto-swap with production
- The template sets *"IsManualIntegration"* to true for getting code from repositories you don't own (meaning, continuous deployment is not enabled this way and you must manually sync the code in the "Deployment Options" blade for the staging slot). Removing this property from the template should enable you to configure continuous deployment with an authorized repository.

## Setup

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-app-staging-slot-continuous-deployment%2FazureDeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

Click the button above to deploy or run the provided script to install it using the following steps:

- Sign-in PowerShell session using your Azure account: 

```powershell
Login-AzureRMAccount
```
- Make sure the correct subscription is selected, otherwise execute:

```powershell
Select-AzureRmSubscription -SubscriptionId $subscriptionId
```

- Finally execute the setup script:

```powershell
setup.ps1
```
