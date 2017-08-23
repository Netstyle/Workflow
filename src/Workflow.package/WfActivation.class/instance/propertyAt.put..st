accessing-properties
propertyAt: aKey put: anObject
	| oldValue |
	oldValue := self propertyAt: aKey ifAbsent: [nil].
	properties at: aKey put: anObject.
	self changedPropertyAt: aKey old: oldValue new: anObject.
	^ anObject