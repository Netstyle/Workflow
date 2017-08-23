as yet unclassified
isLoopingEdge: anEdge
	loopCache ifNil:
		[self isSaved ifFalse: [^ start isLoopingEdge: anEdge seen: #()].
		loopCache := Dictionary new].
	^ loopCache
		at: anEdge
		ifAbsentPut: [self isInOmniBaseTransaction ifTrue: [self markDirty].
					 start isLoopingEdge: anEdge seen: #()]