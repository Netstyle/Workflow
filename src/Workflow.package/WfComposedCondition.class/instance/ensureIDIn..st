exporting
ensureIDIn: anIDManager
	"Set an id for export to all the important components."
	self conditions do: [:ea | ea ensureIDIn: anIDManager].