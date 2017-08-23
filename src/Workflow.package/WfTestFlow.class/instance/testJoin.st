tests
testJoin
	workflow := self library simpleJoin.
	
	self startSession.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete