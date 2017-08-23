activation
completeActivation: anActivation
	self workList complete: anActivation.
	anActivation step completeInFrame: self.
	self workflowManager noteCompletionOf: anActivation in: self workList.
	self workList running isEmpty ifTrue: [self complete].
