getter generation
generateBasicAccessors
	self basicManagedIvars do:
		[:ea |
		self generateGetterFor: ea.
		self generateSetterFor: ea].