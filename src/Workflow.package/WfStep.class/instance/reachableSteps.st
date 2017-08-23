accessing
reachableSteps
	| steps |
	steps := Set new.
	self addReachableStepsTo: steps.
	^ steps