# Azure-Automation
Includes a set of powershell scripts and ARM templates for several key scenarios

##ARM
The following templates are currently available:

* **[web-app-diagnostics](http://github.com/nunoms/Azure-Automation/tree/master/ARM/web-app-diagnostics)** - creates a web app and a service plan. Configures several logging options on the web app - visible on the Diagnostic Logs blade for the web app in the portal.

* **[web-app-insights](http://github.com/nunoms/Azure-Automation/tree/master/ARM/web-app-insights)** - creates a web app, an app service plan and an application insights resource. Establishes the connection between the web app and application insights and adds a value to Application Settings with the instrumentation key, marked as a slot setting to prevent swaps.

* **[web-app-insights-full](http://github.com/nunoms/Azure-Automation/tree/master/ARM/web-app-insights-full)** - Expanding on the web-app-insights template, this one sets up a complete scenario for integration testing by creating a web app with a staging slot, configuring several aspects of monitoring and diagnostics on both slots and enabling Testing in Production feature to allow some traffic to flow to the staging slot. Includes Alert rules, diagnostic log settings and application insights integration.

* **[web-apps-array-parameter](http://github.com/nunoms/Azure-Automation/tree/master/ARM/web-apps-array-parameter)** - simple template that takes an array with site names as an input parameter and creates the respective web apps. It's mostly an example of how to use copyindex and the array functions on ARM templates.

* **[web-app-staging-slot-continuous-deployment](http://github.com/nunoms/Azure-Automation/tree/master/ARM/web-app-staging-slot-continuous-deployment)** - creates a web app with a staging slot linked to a GitHub repository and configured for auto-swap. The template sets *"IsManualIntegration"* to true for getting code from repositories you don't own (meaning, continuous deployment is not enabled this way and you must manually sync the code in the "Deployment Options" blade for the staging slot). Removing this property from the template should enable you to configure continuous deployment with an authorized repository.

