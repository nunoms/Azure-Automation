# Web App with Diagnostic Logs

This is a simple template that takes an array with site names as an input parameter and creates the respective web apps.
It's mostly aimed at providing a simple example of how to use _copyindex_ and the array functions on ARM templates.

## Setup

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-apps-array-parameter%2FazureDeploy.json" target="_blank">
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
