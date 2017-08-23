workflows
simpleJoin
	| workflow task1 task2 join |
	workflow :=  self workflowNamed: 'Simple Join'.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	join := self newStepNamed: 'Join' in: workflow.
	workflow start addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2.
	task1 addOutgoingEdgeFor: join.
	task2 addOutgoingEdgeFor: join.
	^ workflow
