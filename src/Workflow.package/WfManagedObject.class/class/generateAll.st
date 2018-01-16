getter generation
generateAll
	"WfManagedObject generateAll"
	self withAllSubclassesDo: 
		[:ea | ea generateBasicAccessors]