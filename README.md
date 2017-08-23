# Workflow
A powerful and extensible workflow management engine, written in Smalltalk

Workflow was conceived 2005 and originally written in [Squeak Smalltalk](http://squeak.org) and was originally called "Aare", as the swiss river.

Some important points:
- This repository contains only the engine and no examples or user interfaces.
- The original engine depended on the OmniBase object database. We have removed this dependency from this version.
- The source has been exported with [Iceberg](https://github.com/pharo-vcs/iceberg) and is compatible with [Pharo](http://pharo.org).
- Read [the whitepaper](https://github.com/Netstyle/Workflow/blob/master/Workflow-whitepaper.pdf) for further information

# Installation
Evaluate the following in a workspace to quickly load the project:

```smalltalk
Metacello new
  baseline: #Workflow;
  repository: 'github://Netstyle/Workflow:master/src';
  load.
```
