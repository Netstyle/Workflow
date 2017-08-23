as yet unclassified
generateBasicAccessors
	self basicManagedIvars do:
		[:ea |
		self generateGetterFor: ea.
		self generateSetterFor: ea].