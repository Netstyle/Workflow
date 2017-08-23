workflows
splitLoopAndJoin
	| workflow looper join branch1 branch2 |
	workflow := self workflowNamed: 'Split, Loop and Join'.
	join := self newStepNamed: 'Join' in: workflow.
	looper := self newStepNamed: 'Looper' in: workflow. 
	branch1 := self newBranchPointNamed: 'Loop Choice' for: looper and: join in: workflow.	
	branch2 := self newStepNamed: 'Side Branch' in: workflow.

	looper addOutgoingEdgeFor: branch1.
	branch2 addOutgoingEdgeFor: join.
	workflow start addOutgoingEdgeFor: branch1; addOutgoingEdgeFor: branch2.
	^ workflow
