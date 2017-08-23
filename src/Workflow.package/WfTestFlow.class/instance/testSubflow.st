tests
testSubflow
	"self debug: #testSubflow"
	
	workflow := self library simpleSubflow.
	
	"incomplete"
	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('SubEnd')].
	self assertWorkListStepsNamed: #('Subflow: Simple').
	
	"complete"
	self startSession.
	self assertWorkListStepsNamed: #('Before').
	self go.
	self enterSubflow:
		[self assertWorkListStepsNamed: #('SubEnd').
		self go.
		self assertComplete].
	self assertWorkListStepsNamed: #('End')


