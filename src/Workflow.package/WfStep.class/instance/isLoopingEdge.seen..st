testing
isLoopingEdge: anEdge seen: aCollection
	(aCollection includes: self) ifTrue: [^ false].
	^ self outgoingEdges anySatisfy: [:ea | ea isLoopingEdge: anEdge seen: (aCollection copyWith: self)]