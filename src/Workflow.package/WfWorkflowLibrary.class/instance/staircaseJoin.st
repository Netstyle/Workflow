workflows
staircaseJoin
	| workflow task1 task2 task3|
	workflow := self workflowNamed: 'Staircase Join'.
	task1 := self newStepNamed: 'Task 1' in: workflow.
	task2 := self newStepNamed: 'Task 2' in: workflow.
	task3 := self newStepNamed: 'Task 3' in: workflow.
	workflow start addOutgoingEdgeFor: task1; addOutgoingEdgeFor: task2; addOutgoingEdgeFor: task3.
	task2 addOutgoingEdgeFor: task1.
	task3 addOutgoingEdgeFor: task2.
	
	workflow start atOutgoingEdgeFor: task2 putCondition: WfFalseCondition new.
	workflow start atOutgoingEdgeFor: task3 putCondition: WfFalseCondition new.
	 
	^ workflow
