as yet unclassified
initializeWithFrom: aStep to: toStep
	self initialize.
	from := aStep.
	to := toStep.
	condition := WfTrueCondition new