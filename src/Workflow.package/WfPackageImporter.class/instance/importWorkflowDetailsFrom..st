as yet unclassified
importWorkflowDetailsFrom: anXMLNode
	| workflow |
	workflow := self workflowFor: anXMLNode.
	self importStepsFrom: (anXMLNode firstTagNamed: #Activities) for: workflow.
	self importOutgoingEdgesFrom: (anXMLNode firstTagNamed: #Transitions) for: workflow.
	^ workflow
