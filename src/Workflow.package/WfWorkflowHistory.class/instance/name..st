accessing
name: anObject
	| old |
	old := name.
	name := anObject.
	self workflowManager noteChangedIvarOf: self selector: #name from: old.