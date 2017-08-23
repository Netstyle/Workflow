as yet unclassified
testOrdering
	workflow := self library loopingJoin.
	self assert: (workflow allSteps collect: [:ea | ea name]) asArray = #('Start' 'Task 1' 'Looper' 'Task 2')