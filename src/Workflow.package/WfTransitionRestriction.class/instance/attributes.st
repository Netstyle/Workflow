as yet unclassified
attributes
	| type |
	type := self isXOR ifTrue: ['XOR'] ifFalse: ['AND'].
	^ Array with: ('Type' -> type)