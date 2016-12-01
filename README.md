# Azure-Automation
Includes a set of powershell scripts and ARM templates for several key scenarios

##ARM
The following templates are currently available:

* **web-app-insights** - creates a web app, an app service plan and an application insights resource. Establishes the connection between the web app and application insights and adds a value to Application Settings with the instrumentation key, marked as a slot setting to prevent swaps.

* **web-apps-array-parameter** - simple template that takes an array with site names as an input parameter and creates the respective web apps. It's mostly an example of how to use copyindex and the array functions on ARM templates.
