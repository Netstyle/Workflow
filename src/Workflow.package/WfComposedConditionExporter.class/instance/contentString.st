as yet unclassified
contentString
	^ String streamContents:
		[:stream |
		self condition conditions 
			do: [:ea | stream nextPutAll: (ea newExporterOn: builder) contentString]
			separatedBy: [stream space; nextPutAll: self condition operator asUppercase; space]]