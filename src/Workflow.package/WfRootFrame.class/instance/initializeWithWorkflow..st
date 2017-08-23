initialization
initializeWithWorkflow: aWorkflow
	super initializeWithWorkflow: aWorkflow.
	workList := WfWorkList new.
	startTimestamp := TimeStamp current.
	id := self workflowManager generateID