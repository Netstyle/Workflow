as yet unclassified
importNamedStepFrom: anXMLNode for: aWorkflow
	| step |
	step := 
		self context setIDFrom: anXMLNode for:
			(self 
				newStepFrom: anXMLNode 
				for: aWorkflow 
				createBlock: [aWorkflow newNamedStep]).
	step name: (self nameFrom: anXMLNode).
	^ step
