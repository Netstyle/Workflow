conditions
andedBranchConditionWithValue: aBoolean
	^ WfAllCondition new
		add: (self branchConditionWithValue: aBoolean);
		add: (self branchConditionWithValue: aBoolean)