as yet unclassified
attributesOn: aStream
	super attributesOn: aStream.
	aStream nextPut: ('From' -> (self idFor: self edge from)).
	aStream nextPut: ('To' -> (self idFor: self edge to)).