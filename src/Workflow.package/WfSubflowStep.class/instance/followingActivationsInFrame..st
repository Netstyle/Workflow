as yet unclassified
followingActivationsInFrame: aFrame
	| subFrame |
	subFrame := (aFrame basicActivationForStep: self) subFrame.
	^subFrame isNil
		ifTrue: [ #() ]
		ifFalse: [ subFrame workflow start followingActivationsInFrame: subFrame ].