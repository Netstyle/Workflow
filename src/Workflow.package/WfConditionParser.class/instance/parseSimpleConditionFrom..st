parsing
parseSimpleConditionFrom: tokenStream
	| property value |
	property := tokenStream next.
	tokenStream next. "ignore comparator"
	value := tokenStream next.
	^ WfValueCondition property: property value: value