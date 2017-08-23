tests
testBranchLoopAndJoin
	workflow := self library branchLoopAndJoin.
			
	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Loop Choice').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete.
	
	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Loop Choice').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Looper').
	self go.
	self assertWorkListStepsNamed: #('Loop Choice').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete.
