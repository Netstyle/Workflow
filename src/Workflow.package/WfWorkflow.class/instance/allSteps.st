query
allSteps
	| ordered |
	ordered := start withAllChildren.
	steps do: [:ea | ordered addIfNotPresent: ea].
	^ ordered