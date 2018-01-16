exporting
ensureIDIn: anIDManager
	"Set an id for export to all the important components."
	self subflowHistory ifNotNil: [self subflowHistory ensureIDIn: anIDManager].
	^ super ensureIDIn: anIDManager.
