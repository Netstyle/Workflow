initialize-release
initializeWithStep: aStep frame: aFrame
	self initialize.
	frame := aFrame.
	step := aStep.
	properties := Dictionary new.
	incomingTokens := Dictionary new.
