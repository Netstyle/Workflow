tests
testBranch
	workflow := self library simpleBranch.

	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Branch 1').
	self go.
	self assertComplete.

	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Branch 2').
	self go.
	self assertComplete.

