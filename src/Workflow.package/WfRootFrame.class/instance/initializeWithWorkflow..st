initialization
initializeWithWorkflow: aWorkflow
	super initializeWithWorkflow: aWorkflow.
	workList := WfWorkList new.
	startTimestamp := ZTimestamp now.
	id := self workflowManager generateID