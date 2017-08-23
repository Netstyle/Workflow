workflows
branchWithAndedConditions
	| workflow branch1 branch2 branchPoint |
	workflow :=  self workflowNamed: 'Branch with ANDed conditions'.
	branch1 := self newStepNamed: 'Branch 1' in: workflow.
	branch2 := self newStepNamed: 'Branch 2' in: workflow.
	branchPoint := self newBranchPointNamed: 'Brancher' for: branch1 and: branch2 in: workflow yesCondition: (self andedBranchConditionWithValue: true) noCondition: (self andedBranchConditionWithValue: false).
	workflow start addOutgoingEdgeFor: branchPoint.
	^ workflow
