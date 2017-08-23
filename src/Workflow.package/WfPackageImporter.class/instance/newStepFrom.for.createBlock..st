as yet unclassified
newStepFrom: anXMLNode for: aWorkflow createBlock: aBlock
	| id step |
	id := self context idFrom: anXMLNode.
	step :=
		id 
			ifNil: aBlock 
			ifNotNil: [(self idManager at: id) copy resetWithWorkflow: aWorkflow].
	aWorkflow addStep: step.
	^ step