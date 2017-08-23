running
assertRoundtripFor: aWorkflow
	| builder idManager in frame |
	
	frame := aWorkflow executeInNewFrame.
	frame completeAll.
	
	builder := DomBuilder new.
	idManager := IDBasicManager new.
	
	IDCurrentManager use: idManager during:
		[frame ensureIDIn: idManager.
		frame exportOn: builder.
		in := (WfRootFrameImporter document: builder document) import.
		(WfAssertions testCase: self) assertRootFrame: frame isEquivalentTo: in].