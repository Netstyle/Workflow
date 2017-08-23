exporting
ensureIDIn: anIDManager
	self outgoingEdges do: [:ea | ea ensureIDIn: anIDManager].
	^ super ensureIDIn: anIDManager.
