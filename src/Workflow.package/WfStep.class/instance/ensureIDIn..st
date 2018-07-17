exporting
ensureIDIn: anIDManager
	"Set an id for export to all the important components."
	self outgoingEdges do: [:ea | ea ensureIDIn: anIDManager].
	^ super ensureIDIn: anIDManager.
