# The goal of this is to evaluate Azure Functions.

[![Build status](https://ci.appveyor.com/api/projects/status/wr5k613ggc4132v9/branch/master?svg=true)](https://ci.appveyor.com/project/cyplo/azure-functions-playground/branch/master)

Useful links for Azure Functions:

* https://shellmonger.com/2016/10/31/creating-and-debugging-azure-functions-locally/
* http://gregshackles.com/getting-started-with-azure-functions-and-f/ + https://github.com/gshackles/facemoji

Functions can be triggered on many different kinds of [events](https://docs.microsoft.com/en-us/azure/azure-functions/functions-overview). 
For the acceptance tests all of these types of events seem to be externally triggerable without much effort.
I'm focusing on http for tests, as it seems most straightforwad.

General feeling: Azure Functions are being developed quite fast resulting in documentation and tools being lacking a bit. There is still the mentality of "person clicking through stuff" instead of automation all the way. This results in the documentation presenting screenshots instead of command lines. Makes things harder to automate, due to lacks in documentation.

## Developer tools 
Azure Functions CLI (please see [install.ps1](install.ps1) for the info on how to get it) seems to be the choice for the commandline dev usage (create a project, scaffold a function).
It can launch a local server as well.

* The CLI seems to be quite new. It crashes sometimes. The documentation is very lacking.

Things to look for:
* maturity
  * is the source available ?
  * how many active collaborators ?
  * how are support requests/issues handled ?

* how to inject custom library dependencies ? is NuGet the only option ?
* load test the things
* how to deploy from CI ?
  * seems that Azure offers github integration, with builds done on their end
  * I wasn't able to get full deploy to work from the commandline (CLI crashes on creating the function app - maybe raw API call would do?)
* security ?
  * who can exec ? - probably anyone who can trigger the event
  * who can change ?
  * audit log of changes ?
* debugging 
  * exec log ?
  * where do exceptions go ?

Project to write to evaluate:
* HTTP echo server, deployed via CI
