workflows
simpleBranchJoin
	| workflow branch1 branch2 join brancher |
	workflow :=  self workflowNamed: 'XOR Branch and Join'.
	branch1 := self newStepNamed: 'Branch 1' in: workflow.
	branch2 := self newStepNamed: 'Branch 2' in: workflow.
	brancher := self newBranchPointNamed: 'Brancher' for: branch1 and: branch2 in: workflow.
	workflow start addOutgoingEdgeFor: brancher.
	join := self newStepNamed: 'Join' in: workflow.
	branch1 addOutgoingEdgeFor: join.
	branch2 addOutgoingEdgeFor: join. 
	^ workflow
