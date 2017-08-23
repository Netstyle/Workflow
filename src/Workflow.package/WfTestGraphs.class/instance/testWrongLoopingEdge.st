as yet unclassified
testWrongLoopingEdge
	| wf a b |
	wf := WfWorkflow new.
	a := wf newStepNamed: 'a'.
	b := wf newStepNamed: 'b'.
	
	wf start addOutgoingEdgeFor:  a.
 	a addOutgoingEdgeFor: b.
	b addOutgoingEdgeFor: a.
	self assert: b outgoingEdges anyOne isLooping.
	wf start addOutgoingEdgeFor: b.
	a removeOutgoingEdgeFor: b.
	
	wf allSteps do: [ :step | step outgoingEdges do: [ :edge | self deny: edge isLooping]]