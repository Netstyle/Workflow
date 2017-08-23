as yet unclassified
subflowHistory
	" ifNil: block used for backward compatibility "	

	^subflowHistory ifNil: [ subflowHistory := subflow history ]