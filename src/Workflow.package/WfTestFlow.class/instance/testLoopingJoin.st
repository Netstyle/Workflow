tests
testLoopingJoin
	workflow := self library loopingJoin.
			
	self startSession.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Looper').
	self go.

	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Looper').
	self go.

	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
