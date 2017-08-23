as yet unclassified
runSubflow: aWorkflow inActivation: anActivation
	anActivation subFrame: (aWorkflow executeInParentFrame: anActivation frame step: self)