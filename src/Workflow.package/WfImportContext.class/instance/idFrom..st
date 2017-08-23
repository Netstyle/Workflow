as yet unclassified
idFrom: anXMLNode
	^ (anXMLNode attributeAt: #Id) ifNotNilDo: [:idString | self internalIDFor: idString asInteger]