tests
testSimpleSequence

	| ss task2 task1  |
	ss := WfWorkflowLibrary default simpleSequence "executeInNewFrame". 
	
	self assert: ss allSteps size equals: 3.
	task1 := (ss stepNamed: 'Task 1').
	task2 := (ss stepNamed: 'Task 2').
	self assert: task2 class equals: WfNamedStep.
	self assert: task1 class equals: WfNamedStep.
	
	"the first step belongs to the workflow"
	self assert: ss start workflow = ss. 
	
	"The start step has one outgoing step: Task 1"
	self assert: ss start outgoingSteps first = task1. 
	self assert: task1 outgoingSteps first = task2	

