tests
testFollowingActivations
	| task2 loop1 loop2 task1 |
	workflow := self library doubleLoop.

	self startSession.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Task 2' 'Loop 1').
	task2 := frame workList running first.
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Loop 1' 'Loop 2').
	loop1 := frame workList running first.
	self go.
	self assertWorkListStepsNamed: #('Loop 2' 'Task 1').
	loop2 := frame workList running first.
	self go.
	self assertWorkListStepsNamed: #('Task 1' 'Task 2').
	task1 := frame workList running first.
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Task 2' 'Loop 1').
	self takeYesBranch.
	self assertWorkListStepsNamed: #('Loop 1' 'Loop 2').
	
	self assert: task2 followingActivations asSet = {loop2} asSet.
	self assert: loop1 followingActivations asSet = {task1} asSet.
	