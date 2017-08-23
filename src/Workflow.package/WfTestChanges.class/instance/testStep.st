as yet unclassified
testStep
	| step |
	step := WfStep new.
	self should: [step outgoingEdges add: #foo] raise: Error.
