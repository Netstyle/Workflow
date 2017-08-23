as yet unclassified
testDisconnectedSteps
	| orphan1 orphan2 |
	workflow := self library loopingJoin.
	orphan1 := workflow newStepNamed: 'Orphan'.
	orphan2 := workflow newStepNamed: 'Orphan2'.
	orphan1 addOutgoingEdgeFor: orphan2.
	self assert: orphan1 incomingSteps isEmpty.
	self assert: (orphan2 incomingSteps asSet = {orphan1} asSet).
