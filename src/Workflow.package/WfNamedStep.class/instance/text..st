accessing-generated
text: anObject
	| old |
	old := text.
	text := anObject.
	self workflowManager noteChangedIvarOf: self selector: #text from: old.