as yet unclassified
importOutgoingEdgesFrom: anXMLNode for: aWorkflow
	anXMLNode tagsNamed: #Transition do:
		[:ea | self importOutgoingEdgeFrom: ea for: aWorkflow]