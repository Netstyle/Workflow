accessing-properties
propertyAt: aKey ifAbsentPut: aBlock
	^ self propertyAt: aKey ifAbsent: [self propertyAt: aKey put: aBlock value]