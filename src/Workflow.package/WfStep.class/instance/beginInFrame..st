executing
beginInFrame: aFrame
	(aFrame activationForStep: self) "beginInHistory".
	aFrame addStepToWorkList: self