activation
hasCompletedActivationForStep: aStep
	^ self workList hasCompleted: (self activationForStep: aStep)