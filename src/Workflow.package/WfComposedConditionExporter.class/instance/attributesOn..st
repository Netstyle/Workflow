as yet unclassified
attributesOn: aStream
	super attributesOn: aStream.
	aStream nextPut: ('IsAny' -> self condition isAnyCondition).