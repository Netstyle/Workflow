as yet unclassified
exportTag: aString for: anObject with: aBlock
	anObject ifNotNilDo:
		[:v | builder element: aString do: [builder content: (aBlock value: v)]].