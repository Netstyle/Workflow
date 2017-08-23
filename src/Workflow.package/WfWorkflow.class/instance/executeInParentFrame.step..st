as yet unclassified
executeInParentFrame: aFrame step: aStep
	| frame |
	frame := WfSubflowFrame workflow: self parent: aFrame step: aStep.
	self start beginInFrame: frame.
	^ frame