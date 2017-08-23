as yet unclassified
executeInNewFrame
	| frame |
	frame := self newRootFrame.
	self executeInFrame: frame.
	^ frame