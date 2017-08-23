tests
testLoop
	workflow := self library simpleLoop.

	self startSession.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 1').
	