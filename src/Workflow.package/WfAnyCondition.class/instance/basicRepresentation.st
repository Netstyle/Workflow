accessing
basicRepresentation
	^self isEmpty
		ifTrue: [ WfFalseCondition new ]
		ifFalse: [ self ].