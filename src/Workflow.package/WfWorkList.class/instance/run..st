as yet unclassified
run: anActivation
	anActivation hasBegun ifTrue: [self error: 'Trying to run an activation for the second time'].
	running add: anActivation.
	self workflowManager noteRunOf: anActivation in: self.