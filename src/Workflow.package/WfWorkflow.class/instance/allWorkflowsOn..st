as yet unclassified
allWorkflowsOn: aStream
	aStream nextPut: self.
	self allSteps do: [:ea | ea allWorkflowsOn: aStream].