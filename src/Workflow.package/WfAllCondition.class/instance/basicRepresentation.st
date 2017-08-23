accessing
basicRepresentation
	^self isEmpty
		ifTrue: [ WfTrueCondition new ]
		ifFalse: [ self ].