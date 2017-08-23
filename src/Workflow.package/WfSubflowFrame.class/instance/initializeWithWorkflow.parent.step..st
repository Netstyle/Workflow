as yet unclassified
initializeWithWorkflow: aWorkflow parent: aFrame step: aStep
	self initializeWithWorkflow: aWorkflow parent: aFrame.
	incomingStep := aStep.
	workList := WfWorkList new