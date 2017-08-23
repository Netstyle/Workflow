printing
colorInFrame: aFrame
	aFrame isNil ifTrue: [ ^ #black ].
	aFrame workList allRunning do: [ :each | 
		each step = self
			ifTrue: [ ^ #blue ] ].
	aFrame workList allCompleted do: [ :each |
		each step = self 
			ifTrue: [ ^ #darkgreen ] ].
	^ #black.