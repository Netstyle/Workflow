as yet unclassified
firstVisibleStep
	^ self running
		detect: [ :each | each step isUserVisible ]
		ifNone: [ nil ]