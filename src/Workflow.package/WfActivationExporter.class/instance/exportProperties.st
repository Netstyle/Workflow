as yet unclassified
exportProperties
	builder element: 'Properties' do:
		[self activation propertiesDo:
			[:k :v | self exportProperty: k value: v]].