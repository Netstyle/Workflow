as yet unclassified
workflowFor: anXMLNode
	^ (self context idFrom: anXMLNode) ifNotNilDo: [:id | self idManager at: id]