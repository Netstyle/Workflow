exporting
ensureIDIn: anIDManager
	self subflowHistory ifNotNil: [self subflowHistory ensureIDIn: anIDManager].
	^ super ensureIDIn: anIDManager.
