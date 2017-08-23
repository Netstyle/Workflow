testing
isSatisfiedBy: anActivation
	^self conditions allSatisfy: [ :each | 
		each isSatisfiedBy: anActivation ].