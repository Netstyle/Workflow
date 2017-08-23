as yet unclassified
runInFrame: aFrame
	self
		runSubflow: self latestSubflow
		inActivation: (aFrame activationForStep: self)