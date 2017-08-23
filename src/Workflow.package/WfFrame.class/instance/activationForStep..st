activation
activationForStep: aStep
	^ activations at: aStep ifAbsent: [self newActivationForStep: aStep]