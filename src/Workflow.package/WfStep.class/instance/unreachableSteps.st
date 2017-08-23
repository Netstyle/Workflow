accessing
unreachableSteps
	^ self workflow allSteps difference: (self reachableSteps copyWith: self)