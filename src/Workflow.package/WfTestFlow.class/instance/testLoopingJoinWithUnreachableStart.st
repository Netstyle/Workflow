tests
testLoopingJoinWithUnreachableStart
	workflow := self library loopingJoinWithUnreachableStart.
			
	self startSession.
	self assertWorkListStepsNamed: #('Splitter').
	self go.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Looper').
	self go.

	self assertWorkListStepsNamed: #('Splitter').
	self go.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
	self assertWorkListStepsNamed: #('Task 2').
	self go.
	self assertWorkListStepsNamed: #('Looper').
	self go.

	self assertWorkListStepsNamed: #('Splitter').
	self go.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self go.
