accessing-generated
trueCreator: anObject
	| old |
	old := trueCreator.
	trueCreator := anObject.
	self workflowManager noteChangedIvarOf: self selector: #trueCreator from: old.