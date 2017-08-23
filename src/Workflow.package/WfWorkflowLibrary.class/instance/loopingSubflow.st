workflows
loopingSubflow
	| workflow subStep end before |
	workflow := self workflowNamed: 'Looping Subflow'.
	before := self newStepNamed: 'Before' in: workflow. 
	end := self newStepNamed: 'End' in: workflow.
	subStep := (workflow newSubflowStepFor: self branchAndLoop).
	workflow start addOutgoingEdgeFor: before.
	before addOutgoingEdgeFor: subStep. 
	subStep addOutgoingEdgeFor: end.
	^ workflow
