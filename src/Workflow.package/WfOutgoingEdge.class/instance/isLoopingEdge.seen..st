as yet unclassified
isLoopingEdge: anEdge seen: aCollection
	^ anEdge = self
		ifTrue: [aCollection includes: to]
		ifFalse: [(aCollection includes: to) not
					and: [to isLoopingEdge: anEdge seen: aCollection]]