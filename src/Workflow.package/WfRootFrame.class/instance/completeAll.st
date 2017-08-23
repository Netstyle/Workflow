actions
completeAll
	[self workList allRunning isEmpty] whileFalse:
		[self completeActivation: self workList allRunning first].