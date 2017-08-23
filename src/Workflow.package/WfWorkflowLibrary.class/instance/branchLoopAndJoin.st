workflows
branchLoopAndJoin
	| workflow looper join branch1 branch2 brancher |
	workflow := self workflowNamed: 'Branch, Loop and Join'.
	join := self newStepNamed: 'Join' in: workflow.
	looper := self newStepNamed: 'Looper' in: workflow. 
	branch1 := self newBranchPointNamed: 'Loop Choice' for: looper and: join in: workflow.	
	branch2 := self newStepNamed: 'Side Branch' in: workflow.
	brancher := self newBranchPointNamed: 'Brancher' for: branch1 and: branch2 in: workflow.
	
	looper addOutgoingEdgeFor: branch1.
	branch2 addOutgoingEdgeFor: join.
	workflow start addOutgoingEdgeFor: brancher.
	^ workflow
