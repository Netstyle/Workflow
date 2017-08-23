copying
copyInto: aDictionary workflow: aWorkflow
	| copy |
	aDictionary at: self ifPresent: [:v | ^ v].
	copy := self copy resetWithWorkflow: aWorkflow.
	aDictionary at: self put: copy.
	copy copyEdgesFrom: self into: aDictionary.
	^ copy