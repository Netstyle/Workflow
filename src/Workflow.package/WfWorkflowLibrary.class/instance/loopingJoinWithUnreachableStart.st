workflows
loopingJoinWithUnreachableStart
	| workflow task1 task2 looper splitter |
	workflow :=  self workflowNamed: 'Looping Join'.
	splitter := self newStepNamed: 'Splitter' in: workflow.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	looper := self newStepNamed: 'Looper' in: workflow.
	splitter addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2.
	task1 addOutgoingEdgeFor: looper.
	task2 addOutgoingEdgeFor: looper.	
	looper addOutgoingEdgeFor: splitter.
	workflow start addOutgoingEdgeFor: splitter.
	^ workflow
