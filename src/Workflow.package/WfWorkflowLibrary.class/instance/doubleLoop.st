workflows
doubleLoop
	| workflow task1 task2 end loop1 loop2 |
	workflow := self workflowNamed: 'Double Loop'.
	end := self newStepNamed: 'End' in: workflow.
	loop1 := self newStepNamed: 'Loop 1' in: workflow.
	loop2 := self newStepNamed: 'Loop 2' in: workflow.
	task1 := self newBranchPointNamed: 'Task 1' for: loop1 and: end in: workflow.
	task2 := self newBranchPointNamed: 'Task 2' for: loop2 and: end in: workflow.
	loop1 addOutgoingEdgeFor: task1.
	loop2 addOutgoingEdgeFor: task2.
	workflow start addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2.

	^ workflow
