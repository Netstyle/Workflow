executing
loopInFrame: aFrame fromStep: aStep
	| frame |
	frame := WfLoopingFrame workflow: aFrame workflow parent: aFrame.
	self beginInFrame: frame.
	frame prepareToBeginWith: self.
