tests
testDynamicSubflow
	workflow := self library dynamicSubflow.

	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self assertWorkListStepsNamed: #('Subflow: User Choice').
	self chooseSubflow: self library simpleSequence.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('Task 1').
		self go.
		self assertWorkListStepsNamed: #('Task 2').
		self go.
		self assertComplete].
	self assertWorkListStepsNamed: #('End').
	
	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self assertWorkListStepsNamed: #('Subflow: User Choice').
	self chooseSubflow: self library simpleSplit.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('Task 1' 'Task 2').
		self go.
		self assertWorkListStepsNamed: #('Task 2').
		self go.
		self assertComplete].
	self assertWorkListStepsNamed: #('End')


