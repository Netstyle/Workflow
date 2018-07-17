adding
removeWorkflow: aWorkflow
	workflows remove: (aWorkflow history: nil).
	^ aWorkflow