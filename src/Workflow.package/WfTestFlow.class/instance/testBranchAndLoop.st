tests
testBranchAndLoop
	workflow := self library branchAndLoop.

	"0 loops"
	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('End').
	self go.
	self assertComplete.

	"1 loop"
	self startSession.
	self assertWorkListStepsNamed: #('Brancher').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Looper').
	self go.
	self assertWorkListStepsNamed: #('Brancher').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('End').
	self go.
	self assertComplete.

	
