as yet unclassified
workflowNamed: aString
	| workflow history |
	workflow := self workflowClass new.
	history := WfWorkflowHistory forWorkflow: workflow.
	history name: aString.
	^ workflow