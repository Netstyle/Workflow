as yet unclassified
subflowFrom: aFrame
	aFrame isNil ifTrue: [ ^ nil ].
	aFrame workList allRunning, aFrame workList allCompleted do: [ :each |
		(self subflowHistory workflows includes: each subFrame)
			ifTrue: [ ^each subFrame ] ].
	^self latestSubflow