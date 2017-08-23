printing
styleInFrame: aFrame
	aFrame isNil ifTrue: [ ^ #solid ].
	aFrame workList allRunning do: [ :each | 
		each step = self
			ifTrue: [ ^ #bold ] ].
	aFrame workList allCompleted do: [ :each |
		each step = self 
			ifTrue: [ ^ #dashed ] ].
	^ #black.