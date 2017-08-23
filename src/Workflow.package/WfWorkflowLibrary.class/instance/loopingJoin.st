workflows
loopingJoin
	| workflow task1 task2 looper |
	workflow :=  self workflowNamed: 'Looping Join'.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	looper := self newStepNamed: 'Looper' in: workflow.
	workflow start addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2.
	task1 addOutgoingEdgeFor: looper.
	task2 addOutgoingEdgeFor: looper.	
	looper addOutgoingEdgeFor: workflow start.
	^ workflow
