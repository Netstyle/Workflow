getter generation
generateSetterFor: aSymbol
	(self includesSelector: aSymbol asMutator) ifFalse:
		[self 
			compile: aSymbol, ': anObject
	| old |
	old := ', aSymbol, '.
	', aSymbol, ' := anObject.
	self workflowManager noteChangedIvarOf: self selector: #', aSymbol, ' from: old.'
			classified: self generatedCategory]