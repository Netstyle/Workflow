as yet unclassified
exportContent
	self package workflows do:
		[:ea | (ea newExporterOn: builder) export].