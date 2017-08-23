as yet unclassified
newConditionFrom: anXMLNode
	| isAny |
	isAny := Boolean readFromString: (anXMLNode attributeAt: #IsAny) asString.
	^ self conditionParserClass parse: anXMLNode contentString isAny: (isAny notNil and: [isAny])