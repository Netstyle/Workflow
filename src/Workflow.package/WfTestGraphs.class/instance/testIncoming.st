as yet unclassified
testIncoming
	| brancher looper |
	workflow := self library branchAndLoop.
	brancher := workflow stepNamed: 'Brancher'.
	looper := workflow stepNamed: 'Looper'.
	self assert: brancher incomingSteps = {workflow start. looper} asSet.
	self assert: brancher mergeSteps = {workflow start} asSet