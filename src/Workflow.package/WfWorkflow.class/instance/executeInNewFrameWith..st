execution - no senders
executeInNewFrameWith: aRootFrameMemento
	| frame |
	frame := self newRootFrameWith: aRootFrameMemento.
	self executeInFrame: frame.
	^ frame