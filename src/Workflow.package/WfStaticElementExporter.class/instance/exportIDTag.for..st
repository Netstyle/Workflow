as yet unclassified
exportIDTag: aString for: anObject
	self exportTag: aString for: anObject with: [:v | v ensureID asString].