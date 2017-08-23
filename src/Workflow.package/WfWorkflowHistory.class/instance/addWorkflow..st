as yet unclassified
addWorkflow: aWorkflow
	workflows add: (aWorkflow history: self).
	self workflowManager noteAdditionOfWorkflow: aWorkflow toHistory: self.
	^ aWorkflow