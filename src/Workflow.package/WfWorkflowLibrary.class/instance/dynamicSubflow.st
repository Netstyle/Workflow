workflows
dynamicSubflow
	| workflow end before choice |
	workflow :=  self workflowNamed: 'Dynamic Subflow'.
	before := self newStepNamed: 'Before' in: workflow.
	choice := self newDynamicSubflowStepIn: workflow. 
	end := self newStepNamed: 'End' in: workflow.
	workflow start addOutgoingEdgeFor: before.
	before addOutgoingEdgeFor: choice. 
	choice addOutgoingEdgeFor: end.
	^ workflow
