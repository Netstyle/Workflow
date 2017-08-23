step-broker
addStep: aStep
	steps add: aStep.
	self workflowManager noteAdditionOfStep: aStep toWorkflow: self.
	^ aStep