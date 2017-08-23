as yet unclassified
testReachable
	workflow := self library loopingJoin.
	self assert: workflow start unreachableSteps isEmpty.
	