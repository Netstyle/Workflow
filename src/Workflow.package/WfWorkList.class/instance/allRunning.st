as yet unclassified
allRunning
	| all |
	all := OrderedCollection new.
	running do:
		[:ea |
		all add: ea.
		ea subFrame ifNotNilDo: [:sf | all addAll: sf workList allRunning]].
	^ all