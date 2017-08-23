as yet unclassified
allWorkflowsOn: aStream
	self latestSubflow ifNotNil: [self latestSubflow allWorkflowsOn: aStream].