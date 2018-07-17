adding
addWorkflow: aWorkflow
	"Add a bidirectional link to the workflow passed as argument. A workflow will know its history (self) and the history adds the aWorkflow to its current list of workflows."
	
	workflows add: (aWorkflow history: self).
	self workflowManager noteAdditionOfWorkflow: aWorkflow toHistory: self.
	^ aWorkflow