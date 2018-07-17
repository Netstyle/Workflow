singleton
default
	^ default ifNil: [default := self new]