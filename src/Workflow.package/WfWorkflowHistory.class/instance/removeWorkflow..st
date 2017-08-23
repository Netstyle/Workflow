as yet unclassified
removeWorkflow: aWorkflow
	workflows remove: (aWorkflow history: nil).
	^ aWorkflow