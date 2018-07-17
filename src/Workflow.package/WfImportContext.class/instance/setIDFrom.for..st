initialization
setIDFrom: anXMLNode for: aStaticElement
	self mapExternalID: (self idFrom: anXMLNode) to: aStaticElement ensureID.
	^ aStaticElement