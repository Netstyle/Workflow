as yet unclassified
allRunning
	| all |
	all := OrderedCollection new.
	running
		do: [ :ea | 
			all add: ea.
			ea subFrame ifNotNil: [ :sf | all addAll: sf workList allRunning ] ].
	^ all