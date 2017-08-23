accessing-generated
type: anObject
	| old |
	old := type.
	type := anObject.
	self workflowManager noteChangedIvarOf: self selector: #type from: old.