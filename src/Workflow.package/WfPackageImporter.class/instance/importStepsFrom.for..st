as yet unclassified
importStepsFrom: anXMLNode for: aWorkflow
	anXMLNode tagsNamed: #Activity do:
		[:ea | self importStepFrom: ea for: aWorkflow].