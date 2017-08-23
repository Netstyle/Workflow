as yet unclassified
postCopy
	| copies |
	super initialize.
	loopCache := nil.
	copies := Dictionary new.
	steps := steps collect: [:ea | ea copyInto: copies workflow: self].
	start := copies at: start.
	steps do: [:ea | self workflowManager noteAdditionOfStep: ea toWorkflow: self]