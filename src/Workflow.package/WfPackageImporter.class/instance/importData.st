as yet unclassified
importData
	self workflowTagsDo: 
		[:ea || wf |
		wf := self workflowClass new.
		self context setIDFrom: ea for: wf.
		package addWorkflow: wf].
	self workflowTagsDo:
		[:ea | self importWorkflowDetailsFrom: ea].