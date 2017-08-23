tests
testSimpleSequence
	workflow := self library simpleSequence.
	
	self startSession.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertComplete