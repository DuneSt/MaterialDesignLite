instance creation
newWith: aBlock
	^ self new
		content: aBlock;
		yourself