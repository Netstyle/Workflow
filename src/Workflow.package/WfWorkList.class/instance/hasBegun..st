testing
hasBegun: anActivation
	^ (running includes: anActivation) or: [completed includes: anActivation]