query
incomingStepsFor: aStep loops: aBoolean
	| set |
	set := Set new.
	self allSteps do: [:ea | ea addIncomingStepsFor: aStep to: set loops: aBoolean].
	^ set