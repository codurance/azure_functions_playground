# The goal of this is to evaluate Azure Functions.

CI: https://ci.appveyor.com/project/cyplo/azure-functions-playground

Useful links for Azure Functions:
http://gregshackles.com/getting-started-with-azure-functions-and-f/ + https://github.com/gshackles/facemoji


Things to look at:
* maturity
  * is the source available ?
  * how many active collaborators ?
  * how are support requests/issues handled ?
* how to write acceptance test (http ?)
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
