tests
testIsConnectedToStart
	| orphan1 orphan2 |
	workflow := self library loopingJoin.
	orphan1 := workflow newStepNamed: 'Orphan'.
	orphan2 := workflow newStepNamed: 'Orphan2'.
	orphan1 addOutgoingEdgeFor: orphan2.
	
	workflow allSteps do:
		[:ea |
		self assert: (ea isConnectedToStart = ({orphan1. orphan2} includes: ea) not)].
	
	"workflow graphViz."
	
	workflow allSteps do:
		[:ea |
		self assert: (ea isConnectedToStart = ({orphan1. orphan2} includes: ea) not)].
