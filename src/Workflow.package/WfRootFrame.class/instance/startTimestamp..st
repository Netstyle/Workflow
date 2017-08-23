accessing-generated
startTimestamp: anObject
	| old |
	old := startTimestamp.
	startTimestamp := anObject.
	self workflowManager noteChangedIvarOf: self selector: #startTimestamp from: old.