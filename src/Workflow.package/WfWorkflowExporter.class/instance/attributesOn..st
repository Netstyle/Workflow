as yet unclassified
attributesOn: aStream
	super attributesOn: aStream.
	aStream nextPut: ('Name' -> self workflow name).
	
	"non-xpdl"
	self workflow history ifNotNilDo:
		[:h | aStream nextPut: ('History' -> h ensureID asString)].