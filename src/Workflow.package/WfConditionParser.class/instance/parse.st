parsing
parse
	| tokenStream condition conditionClass |
	tokenStream := ((text findTokens: '''') collect: [:ea | ea trimBoth]) readStream.
	tokenStream atEnd ifFalse: [condition := self parseSimpleConditionFrom: tokenStream].
	tokenStream atEnd ifFalse: 
		[conditionClass := 
			tokenStream peek = 'AND' ifTrue: [WfAllCondition] ifFalse: [WfAnyCondition].
		condition := conditionClass new add: condition].
	[tokenStream atEnd] whileFalse:
		[tokenStream next.
		condition add: (self parseSimpleConditionFrom: tokenStream)].
	^ condition
		