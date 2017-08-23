as yet unclassified
exampleWorkflows
	^ 
	{
		self simpleSequence.
		self simpleSplit.
		self simpleBranch.
		self simpleJoin.
		self simpleLoop.
		self simpleBranchJoin.
		self branchAndLoop.
		self loopingJoin.
		self simpleSubflow.
		self loopingSubflow.
		self dynamicSubflow.
	}