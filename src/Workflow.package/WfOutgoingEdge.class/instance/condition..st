accessing-generated
condition: anObject
	| old |
	old := condition.
	condition := anObject.
	self workflowManager noteChangedIvarOf: self selector: #condition from: old.