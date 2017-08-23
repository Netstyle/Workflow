tests
enterSubflow: aBlock
	| oldframe |
	oldframe := frame.
	frame := frame workList running first subFrame.
	aBlock value.
	frame := oldframe