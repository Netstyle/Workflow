flow
chooseSubflow: aWorkflow
	| activation |
	activation := frame workList running first.
	activation chooseSubflow: aWorkflow