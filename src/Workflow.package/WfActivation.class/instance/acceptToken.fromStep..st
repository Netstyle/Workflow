subflows
acceptToken: aBoolean fromStep: aStep
	incomingTokens at: aStep put: aBoolean.
	self workflowManager noteToken: aBoolean fromStep: aStep acceptedBy: self.