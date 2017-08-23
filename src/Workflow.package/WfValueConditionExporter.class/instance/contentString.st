as yet unclassified
contentString
	^ String streamContents:
		[:stream |
		stream 
			nextPut: $';
			nextPutAll: self condition property asString;
			nextPut: $';
			nextPutAll: ' == ';
			nextPut: $';
			nextPutAll: self condition value asString;
			nextPut: $']