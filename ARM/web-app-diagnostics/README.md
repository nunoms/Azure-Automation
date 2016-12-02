# Web App with Diagnostic Logs

This template allows you to setup a web app with some diagnostic log options enabled.

- Creates a web app and a service plan.
- Configures several logging options on the web app - visible on the Diagnostic Logs blade for the web app in the portal.

## Setup

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-app-diagnostics%2FazureDeploy.json" target="_blank">
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
