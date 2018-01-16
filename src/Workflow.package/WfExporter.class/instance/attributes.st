accessing
attributes
	^ Array streamContents: [:stream | self attributesOn: stream]