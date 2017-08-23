accessing-generated
priority: anObject
	| old |
	old := priority.
	priority := anObject.
	self workflowManager noteChangedIvarOf: self selector: #priority from: old.