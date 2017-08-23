as yet unclassified
exportOn: aDomBuilder
	aDomBuilder element: self element attributes: self attributes do:
		[self exportContentOn: aDomBuilder].