accessing-generated
id: anObject
	| old |
	old := id.
	id := anObject.
	self workflowManager noteChangedIvarOf: self selector: #id from: old.