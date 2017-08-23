accessing
withAllChildren
	| children |
	children := OrderedCollection new.
	self addAllChildrenTo: children.
	^ children