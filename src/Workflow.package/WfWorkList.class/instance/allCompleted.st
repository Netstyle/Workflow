as yet unclassified
allCompleted
	| all |
	all := OrderedCollection new.
	completed
		do: [ :ea | 
			all add: ea.
			ea subFrame
				ifNotNil: [ :sf | all addAll: sf workList allCompleted ] ].
	running
		do:
			[ :ea | ea subFrame ifNotNil: [ :sf | all addAll: sf workList allCompleted ] ].
	^ all