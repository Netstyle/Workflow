assertions
assertWorkListStepsNamed: aCollection
	| names |
	names := frame workList runningSteps collect: [:ea | ea name].
	self assert: aCollection asSet = names asSet