exporting
ensureIDIn: anIDManager
	activations do: [:ea | ea ensureIDIn: anIDManager].
	^ super ensureIDIn: anIDManager