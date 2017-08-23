workflows
simpleSubflow
	| workflow sub subStep end subEnd before |
	workflow :=  self workflowNamed: 'With Subflow'.
	before := self newStepNamed: 'Before' in: workflow. 
	end := self newStepNamed: 'End' in: workflow.
	sub :=  self workflowNamed: 'Simple'.
	subEnd := self newStepNamed: 'SubEnd' in: sub.
	sub start addOutgoingEdgeFor: subEnd.
	subStep := workflow newSubflowStepFor: sub.
	workflow start addOutgoingEdgeFor: before.
	before addOutgoingEdgeFor: subStep. 
	subStep addOutgoingEdgeFor: end.
	^ workflow
