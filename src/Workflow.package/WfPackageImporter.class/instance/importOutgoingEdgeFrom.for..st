as yet unclassified
importOutgoingEdgeFrom: anXMLNode for: aWorkflow
	| from to edge |
	from := aWorkflow allSteps detect: [:ea | ea id = (self context internalIDFor: (anXMLNode attributeAt: #From) asInteger)].
	to := aWorkflow allSteps detect: [:ea | ea id = (self context internalIDFor: (anXMLNode attributeAt: #To) asInteger)].
	edge := from addOutgoingEdgeFor: to.
	self context setIDFrom: anXMLNode for: edge.
	(anXMLNode firstTagNamed: #Condition) ifNotNilDo:
		[:tag | edge condition: (self newConditionFrom: tag)].