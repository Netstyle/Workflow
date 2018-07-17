testing
isLoopingEdge: anEdge
	loopCache ifNil:
		[self isSaved ifFalse: [^ start isLoopingEdge: anEdge seen: #()].
		loopCache := Dictionary new].
	^ loopCache
		at: anEdge
		ifAbsentPut: [ start isLoopingEdge: anEdge seen: #()]