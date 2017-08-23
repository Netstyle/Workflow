as yet unclassified
continueInFrame: aFrame
	| activation |
	activation := aFrame activationForStep: from.
	(condition isSatisfiedBy: activation)
		ifTrue: [self continueAliveInFrame: aFrame]
		ifFalse: [self continueDeadInFrame: aFrame]