workflows
branchAndLoop
	| workflow brancher looper end |
	workflow := self workflowNamed: 'Branch and Loop'.
	looper := self newStepNamed: 'Looper' in: workflow. 
	end := self newStepNamed: 'End' in: workflow.
	brancher := self newBranchPointNamed: 'Brancher' for: end  and: looper in: workflow.
	workflow start addOutgoingEdgeFor: brancher.
	looper addOutgoingEdgeFor: brancher.
	^ workflow
