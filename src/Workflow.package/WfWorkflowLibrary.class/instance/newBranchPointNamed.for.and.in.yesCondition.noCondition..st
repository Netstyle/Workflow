as yet unclassified
newBranchPointNamed: aString for: yesStep and: noStep in: aWorkflow yesCondition: yesCondition noCondition: noCondition
	| branchPoint |
	branchPoint := self newStepNamed: aString in: aWorkflow.
	branchPoint addOutgoingEdgeFor: yesStep.
	branchPoint addOutgoingEdgeFor: noStep.
	branchPoint atOutgoingEdgeFor: yesStep putCondition: yesCondition.
	branchPoint atOutgoingEdgeFor: noStep putCondition: noCondition.
	^ branchPoint