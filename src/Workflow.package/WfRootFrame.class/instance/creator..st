accessing-generated
creator: anObject
	| old |
	old := creator.
	creator := anObject.
	self workflowManager noteChangedIvarOf: self selector: #creator from: old.