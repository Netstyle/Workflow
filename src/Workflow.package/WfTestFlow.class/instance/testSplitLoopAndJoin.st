tests
testSplitLoopAndJoin
	workflow := self library splitLoopAndJoin.
			
	self startSession.
	self assertWorkListStepsNamed: #('Loop Choice' 'Side Branch').
	self takeNoBranch.
	self assertWorkListStepsNamed: #('Side Branch').
	self go.
	self assertWorkListStepsNamed: #('Join').
	self go.
	self assertComplete.
	
	self startSession.
	self assertWorkListStepsNamed: #('Loop Choice' 'Side Branch').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Side Branch' 'Looper').
	self goSecond.
	self assertWorkListStepsNamed: #('Side Branch' 'Loop Choice').
	self takeNoBranchSecond.
	self assertWorkListStepsNamed: #('Side Branch' 'Join').
	self go.
	self assertWorkListStepsNamed: #('Join' 'Join').
	