as yet unclassified
exportAsStringIfNotNil: anObject tag: aString
	anObject ifNotNil:
		[builder element: aString do: [builder content: anObject asString]].