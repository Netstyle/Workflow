as yet unclassified
idFor: aStaticElement
	aStaticElement id ifNotNilDo: [:id | ^ id asString].
	self error: 'No ID for: ', aStaticElement printString.