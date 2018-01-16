accessing
workflowNamed: aString
	"Creates a new workflow named aString"
	
	| workflow history |
	workflow := self workflowClass new.
	history := WfWorkflowHistory forWorkflow: workflow.
	history name: aString.
	"an history is responsible to set the history of a workflow.
	Therefore there is not need to return or keep the history We can access it
	from the workflow."
	^ workflow