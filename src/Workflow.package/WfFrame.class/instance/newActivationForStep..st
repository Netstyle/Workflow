activation
newActivationForStep: aStep
	| new |
	(activations includesKey: aStep) ifTrue: [self error: 'Trying to overwrite activation'].
	new := activations at: aStep put: (self workflowManager activationClass step: aStep frame: self).
	self workflowManager noteNewActivation: new on: self forStep: aStep.
	^ new