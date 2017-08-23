printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPut: $[.
	aStream nextPutAll: self identityHash asString.
	aStream nextPut: $]