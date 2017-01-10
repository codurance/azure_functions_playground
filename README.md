# The goal of this is to evaluate Azure Functions.

[![Build status](https://ci.appveyor.com/api/projects/status/wr5k613ggc4132v9/branch/master?svg=true)](https://ci.appveyor.com/project/cyplo/azure-functions-playground/branch/master)

Useful links for Azure Functions:

* https://shellmonger.com/2016/10/31/creating-and-debugging-azure-functions-locally/
* http://gregshackles.com/getting-started-with-azure-functions-and-f/ + https://github.com/gshackles/facemoji

Functions can be triggered on many different kinds of [events](https://docs.microsoft.com/en-us/azure/azure-functions/functions-overview). 
For the acceptance tests all of these types of events seem to be externally triggerable without much effort.
I'm focusing on http for tests, as it seems most straightforwad.
 
## Developer tools 
Azure Functions CLI (please see [install.ps1](install.ps1) for the info on how to get it) seems to be the choice for the commandline dev usage (create a project, scaffold a function).
It can launch a local server as well.

Things to look at:
* maturity
  * is the source available ?
  * how many active collaborators ?
  * how are support requests/issues handled ?

* load test the things
* how write unit test ?
* how to deploy from CI ?
* security ?
  * who can exec ?
  * who can change ?
  * audit log of changes ?
* debugging 
  * exec log ?
  * where do exceptions go ?

Project to write to evaluate:
* HTTP echo server, deployed via CI
