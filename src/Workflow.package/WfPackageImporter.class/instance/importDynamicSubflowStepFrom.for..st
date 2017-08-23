as yet unclassified
importDynamicSubflowStepFrom: anXMLNode for: aWorkflow
	^ self context setIDFrom: anXMLNode for: 
		(self 
			newStepFrom: anXMLNode 
			for: aWorkflow 
			createBlock: [aWorkflow newDynamicSubflowStep])