as yet unclassified
allWorkflows
	^ Array streamContents:
		[:stream | self allWorkflowsOn: stream]