as yet unclassified
followingActivationsInFrame: aFrame
	| activations |
	activations :=
		(self outgoingEdges collect: [:ea | ea followingActivationInFrame: aFrame])
			select: [:ea | ea notNil and: [ea isAlive]].
	^ activations isEmpty
		ifFalse: [activations]
		ifTrue: [aFrame furtherActivations]