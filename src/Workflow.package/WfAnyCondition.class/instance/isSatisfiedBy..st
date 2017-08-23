testing
isSatisfiedBy: anActivation
	^self conditions anySatisfy: [ :each | 
		each isSatisfiedBy: anActivation ].