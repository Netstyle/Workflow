tests
testModifyFlow
	workflow := self library simpleLoop.

	self startSession.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 1').
	
	workflow := workflow copy.
	(workflow stepNamed: 'Task 2') removeOutgoingEdgeFor: (workflow start).
	
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 1').

	self startSession.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertComplete