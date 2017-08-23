as yet unclassified
generateAll
	"WfManagedObject generateAll"
	self withAllSubclassesDo: 
		[:ea | ea generateBasicAccessors]