as yet unclassified
exportSubflowImplementation
	| attributes |
	attributes := OrderedCollection new.
	self step subflowHistory ifNotNilDo: [:h | attributes add: ('History' -> (self idFor: h))].
	builder 
		element: 'Subflow' 
		attributes: attributes asArray
		do: [self exportActualParameters]