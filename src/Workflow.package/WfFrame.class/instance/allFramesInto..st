accessing
allFramesInto: aSet
	self workList allActivations do: [ :activation |
		(aSet includes: activation frame) ifFalse: [
			aSet add: activation frame.
			activation frame allFramesInto: aSet ] ].
	^ aSet.