running
assertOutgoingEdge: anOutgoingEdge isEquivalentTo: otherOutgoingEdge
	self assert: anOutgoingEdge from hash = otherOutgoingEdge from hash.
	self assert: anOutgoingEdge to hash = otherOutgoingEdge to hash.
	self assertCondition: anOutgoingEdge condition isEquivalentTo: otherOutgoingEdge condition.