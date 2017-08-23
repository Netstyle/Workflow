activation
addStepToWorkList: aStep
	self workList run: (self activationForStep: aStep).
	aStep runInFrame: self.