as yet unclassified
joinRestrictionsOn: aStream
	self step hasIncomingLoopingEdge ifTrue:
		[aStream nextPut: WfJoinRestriction new beXOR].