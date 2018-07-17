getter generation
generateGetterFor: aSymbol
	(self includesSelector: aSymbol) ifFalse:
		[self 
			compile: aSymbol, ' 
	^ ', aSymbol
			classified: self generatedCategory].
