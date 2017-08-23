running
assertWorkflow: aWorkflow isEquivalentTo: otherWorkflow
	| sortBlock |
	sortBlock := [:a :b | a name <= b name].
	(aWorkflow allSteps asSortedCollection: sortBlock) 
		with: (otherWorkflow allSteps asSortedCollection: sortBlock) do:
			[:ea :other | self assertStep: ea isEquivalentTo: other].