as yet unclassified
workflowHistoryFor: anXMLNode
	^ (anXMLNode attributeAt: #History) ifNotNilDo: [:id | self idManager at: id]