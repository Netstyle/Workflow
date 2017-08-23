as yet unclassified
importStartStepFrom: anXMLNode for: aWorkflow
	| step |
	step := self newStepFrom: anXMLNode for: aWorkflow createBlock: [aWorkflow newStartStep].
	self context setIDFrom: anXMLNode for: step.
	aWorkflow resetWithStart: step.