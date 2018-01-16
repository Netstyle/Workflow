as yet unclassified
workflowManager
	"Was the code with the dynamic variable
	^ WfCurrentWorkflowManager value ifNil: [WfWorkflowManager new]"
	^ WfWorkflowManager new