as yet unclassified
importStepFrom: anXMLNode for: aWorkflow
	(anXMLNode attributeAt: #Name) = #Start ifTrue: 
		[^ self importStartStepFrom: anXMLNode for: aWorkflow].
	(anXMLNode firstTagNamed: #Implementation) ifNotNilDo: 
		[:tag | 
		(tag firstTagNamed: #Subflow) ifNotNil: 
			[^ self importStaticSubflowStepFrom: anXMLNode for: aWorkflow].
		(tag firstTagNamed: #SubflowChoice) ifNotNil:
			[^ self importDynamicSubflowStepFrom: anXMLNode for: aWorkflow]].
	^ self importNamedStepFrom: anXMLNode for: aWorkflow
