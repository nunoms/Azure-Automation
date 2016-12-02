# Web App with Application Insights

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnunoms%2FAzure-Automation%2Fmaster%2FARM%2Fweb-app-insights%2FazureDeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

Expanding on the web-app-insights template, this template sets up a web app on Azure and several application insight resources for multiple environment telemetry collection.

- Creates 3 application insights resources (production, staging and dev).
- Configures a staging slot on the web app
- Configures both the production and staging slot to connect to the corresponding application insight resources
- Adds the instrumentation key value to the Application Settings on both slots.
- Returns as an output the Dev instrumentation key

You need to make changes to your web app code to ensure you are reading the instrumentation key from the application settings. Follow [this link](https://blogs.msdn.microsoft.com/visualstudioalm/2015/01/07/application-insights-support-for-multiple-environments-stamps-and-app-versions/) for more information.

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
