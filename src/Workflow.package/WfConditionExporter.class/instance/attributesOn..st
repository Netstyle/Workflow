as yet unclassified
attributesOn: aStream
	super attributesOn: aStream.
	aStream nextPut: ('Class' -> self condition class name).