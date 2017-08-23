as yet unclassified
workflowManager
	^ WfCurrentWorkflowManager value ifNil: [WfWorkflowManager new]