tests
testBranchJoin
	workflow := self library simpleBranchJoin.
	
	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Branch 1').
	self go.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete.

	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Branch 2').
	self go.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete.

	
