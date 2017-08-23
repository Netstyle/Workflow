accessing-generated
title: anObject
	| old |
	old := title.
	title := anObject.
	self workflowManager noteChangedIvarOf: self selector: #title from: old.