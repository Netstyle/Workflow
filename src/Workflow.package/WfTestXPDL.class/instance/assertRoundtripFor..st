running
assertRoundtripFor: aWorkflow
	| builder idManager out in |
	builder := DomBuilder new.
	idManager := IDBasicManager new.
	
	out := WfPackage new.
	IDCurrentManager use: idManager during:
		[aWorkflow allWorkflows do: [:ea | ea ensureIDIn: idManager].
		((out workflows: aWorkflow allWorkflows; yourself) newExporterOn: builder) export.
		in := WfPackage new.
		(WfPackageImporter node: builder document) package: in; import.
		(WfAssertions testCase: self) assertPackage: out isEquivalentTo: in].