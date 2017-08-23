workflows
simpleSplit
	| workflow task1 task2 |
	workflow :=  self workflowNamed: 'Simple Split'.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	workflow start addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2.
	^ workflow
