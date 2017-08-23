step-broker
removeStep: aStep
	steps remove: aStep ifAbsent: [ self error: 'Step not found.' ].
	self allSteps do: [ :step | step removeOutgoingEdgeFor: aStep ].
	self workflowManager noteRemovalOfStep: aStep toWorkflow: self.
	^aStep.