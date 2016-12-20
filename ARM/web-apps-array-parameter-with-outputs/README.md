# web-apps-array-parameter

This is a simple template that takes an array with site names as an input parameter and creates the respective web apps.
It's mostly aimed at providing a simple example of how to use _copyindex_ and the array functions on ARM templates.

## Setup

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-apps-array-parameter-with-outputs%2FazureDeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

Click the button above to deploy or run the provided script to install it using the following steps:

Note: to ensure the template deploys successfully a random identifier is appended to all web app names to avoid collision, since they need to be unique:

```arm
[concat(parameters('siteNames')[copyindex()],uniqueString(resourceGroup().id))]
```

In a real scenario you may want to remove the randomization by replacing the above value with the following (notice there are two occurrences of this):
```arm
[parameters('siteNames')[copyindex()]]
```


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
