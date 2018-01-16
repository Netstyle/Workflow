execution
executeInNewFrame
	| frame |
	frame := self newRootFrame.
	self executeInFrame: frame.
	^ frame