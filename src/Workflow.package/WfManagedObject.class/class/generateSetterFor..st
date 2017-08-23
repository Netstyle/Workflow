as yet unclassified
generateSetterFor: aSymbol
	(self includesSelector: aSymbol asMutator) ifFalse:
		[self 
			compile: aSymbol, ': anObject
	| old |
	old _ ', aSymbol, '.
	', aSymbol, ' _ anObject.
	self workflowManager noteChangedIvarOf: self selector: #', aSymbol, ' from: old.'
			classified: self generatedCategory]