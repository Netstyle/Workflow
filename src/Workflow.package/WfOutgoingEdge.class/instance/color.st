as yet unclassified
color
	^ self isLooping
		ifTrue: [#red]
		ifFalse: [#black]