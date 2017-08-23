tests
testLoopingSubflow
	"self debug: #testLoopingSubflow"
	
	workflow := self library loopingSubflow.
	
	"incomplete"
	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('Brancher').
		self takeNoBranch.
		self assertWorkListStepsNamed: #('Looper')].
	self assertWorkListStepsNamed: #('Subflow: Branch and Loop').
	
	"complete"
	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('Brancher').
		self takeNoBranch.
		self assertWorkListStepsNamed: #('Looper').
		self go.
		self assertWorkListStepsNamed: #('Brancher').
		self takeYesBranch.
		self assertWorkListStepsNamed: #('End').
		self go.
		self assertComplete].
	self assertWorkListStepsNamed: #('End')