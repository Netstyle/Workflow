as yet unclassified
testDisconnectedStep
	workflow := self library loopingJoin.
	workflow newStepNamed: 'Orphan'.
	self assert: (workflow allSteps collect: [:ea | ea name]) asArray = #('Start' 'Task 1' 'Looper' 'Task 2' 'Orphan')