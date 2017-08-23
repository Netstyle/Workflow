as yet unclassified
transitionRestrictions
	^ Array streamContents:
		[:stream |
		self joinRestrictionsOn: stream.
		self splitRestrictionsOn: stream]