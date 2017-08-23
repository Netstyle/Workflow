copying
copyWith: aDictionary
	^ self copy initialize conditions: (self conditions collect: [:ea | ea copyWith: aDictionary])