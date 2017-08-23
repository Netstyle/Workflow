accessing
addAllChildrenTo: aCollection
	(aCollection includes: self) ifFalse:
		[aCollection add: self.
		self outgoingEdges do: [:ea | ea step addAllChildrenTo: aCollection]]