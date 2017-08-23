as yet unclassified
testIncoming2
       | wf a1 a2 end |
       wf := WfWorkflow new.
       a1 := wf newStepNamed: 'a1'.
       a2 := wf newStepNamed: 'a2'.
	  end := wf newStepNamed: 'end'.
	
       wf start addOutgoingEdgeFor: a1.
       a1 addOutgoingEdgeFor: a2.
       a2 addOutgoingEdgeFor: a1.
       a2 addOutgoingEdgeFor: end.

       self assert: a1 outgoingSteps asSet = { a2 } asSet.
       self assert: a2 outgoingSteps asSet = { a1. end } asSet.

       self assert: a1 incomingSteps asSet = { wf start. a2 } asSet.
       self assert: a2 incomingSteps asSet = { a1 } asSet.
