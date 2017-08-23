as yet unclassified
testWorkList
	| worklist |
	worklist := WfWorkList new.
	self should: [worklist running add: #foo] raise: Error.
	self should: [worklist completed add: #foo] raise: Error.