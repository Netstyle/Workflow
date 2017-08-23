testing
isEquivalentTo: other
	((super isEquivalentTo: other)
		and: [self conditions size = other conditions size])
			ifTrue: 
				[self conditions with: other conditions do: 
					[:c1 :c2 | (c1 isEquivalentTo: c2) ifFalse: [^ false]]]
			ifFalse: [^ false].
	^ true