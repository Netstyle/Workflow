copying
copyEdgesFrom: aStep into: aDictionary
	| to condition |
	aStep outgoingEdges do:
		[:ea |
		to := aDictionary at: ea to ifAbsentPut: [ea to copyInto: aDictionary workflow: workflow].
		condition := ea condition copyWith: aDictionary.
		self atOutgoingEdgeFor: to putCondition: condition]