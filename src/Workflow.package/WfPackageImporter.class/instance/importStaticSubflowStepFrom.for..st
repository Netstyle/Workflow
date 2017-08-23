as yet unclassified
importStaticSubflowStepFrom: anXMLNode for: aWorkflow
	| step |
	step :=
		self context setIDFrom: anXMLNode for: 
			(self 
				newStepFrom: anXMLNode 
				for: aWorkflow 
				createBlock: [aWorkflow newSubflowStep]).
	step subflowHistory: (self workflowHistoryFor: (anXMLNode firstTagNamed: #Subflow)).
	^ step