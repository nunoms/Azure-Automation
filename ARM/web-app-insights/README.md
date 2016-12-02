# web-app-insights

This template allows you to setup a web app with application insights.

- It creates a web app, an app service plan and an application insights resource.
- Establishes the connection between the web app and application insights
- Adds a value to Application Settings with the instrumentation key (marked as a slot setting to prevent swaps).

You need to make changes to your web app code to ensure you are reading the instrumentation key from the application settings. Follow [this link](https://blogs.msdn.microsoft.com/visualstudioalm/2015/01/07/application-insights-support-for-multiple-environments-stamps-and-app-versions/) for more information.

## Setup

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-app-insights%2FazureDeploy.json" target="_blank">
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
