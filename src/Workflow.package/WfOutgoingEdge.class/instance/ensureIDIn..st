exporting
ensureIDIn: anIDManager
	"Set an id for export to all the important components."
	self condition ensureIDIn: anIDManager.
	super ensureIDIn: anIDManager.