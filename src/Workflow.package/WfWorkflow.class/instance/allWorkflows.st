accessing
allWorkflows
	^ Array streamContents:
		[:stream | self allWorkflowsOn: stream]