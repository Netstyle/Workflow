as yet unclassified
executeInNewFrameWith: aRootFrameMemento
	| frame |
	frame := self newRootFrameWith: aRootFrameMemento.
	self executeInFrame: frame.
	^ frame