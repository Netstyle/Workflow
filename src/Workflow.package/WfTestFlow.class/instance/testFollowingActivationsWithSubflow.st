tests
testFollowingActivationsWithSubflow
	| before subend end sub |
	workflow := self library simpleSubflow.

	self startSession.
	self assertWorkListStepsNamed: #('Before').
	before := frame workList running first.
	self go.
	sub := frame workList running first.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('SubEnd').
		subend := frame workList running first.
		self go].
	self assertWorkListStepsNamed: #('End').
	end := frame workList running first.
	self assert: (before followingActivations asSet = {sub} asSet).
	self assert: (sub followingActivations asSet = {subend} asSet).
	self assert: (subend followingActivations asSet = {end} asSet)