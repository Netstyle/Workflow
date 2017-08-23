tests
testSplit
	workflow := self library simpleSplit.
	
	self startSession.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertComplete