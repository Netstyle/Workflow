as yet unclassified
newBranchPointNamed: aString for: yesStep and: noStep in: aWorkflow
	^ self 
		newBranchPointNamed: aString 
		for: yesStep 
		and: noStep 
		in: aWorkflow 
		yesCondition: (self branchConditionWithValue: true) 
		noCondition: (self branchConditionWithValue: false)