workflows
simpleLoop
	| workflow task1 task2 |
	workflow :=  self workflowNamed: 'Simple Loop'.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	workflow start addOutgoingEdgeFor: task1.
	task1 addOutgoingEdgeFor: task2. 
	task2 addOutgoingEdgeFor: workflow start.
	^ workflow
