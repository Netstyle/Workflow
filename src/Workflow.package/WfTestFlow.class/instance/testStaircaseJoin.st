tests
testStaircaseJoin	
	"self debug: #testStaircaseJoin"
	workflow := self library staircaseJoin.
	self startSession.
	self assertWorkListStepsNamed: #('Task 1').
	self go.
	self assertComplete