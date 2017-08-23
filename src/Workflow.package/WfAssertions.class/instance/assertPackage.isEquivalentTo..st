running
assertPackage: aPackage isEquivalentTo: otherPackage
	aPackage workflows with: otherPackage workflows do:
		[:wf :other | self assertWorkflow: wf isEquivalentTo: other].