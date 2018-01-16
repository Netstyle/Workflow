I am the main entity of a workflow definition. I know about my all my steps, including the start steps and the history of myself. For opimization I am caching the looping edges within a dictionary.


I know my history (an instance of WorkfloHistory).

!! Notes from the reverse engineers  (stef and hamdi)

- It seems that the name of a workflow is the one of its history. 
Now the responsibility to wire together an history and its workflow (or the inverse) is defined in the method WfWorkflowLibrary>>workflowNamed: .
It looks like this method should be move to WkWorkflow instead. 


