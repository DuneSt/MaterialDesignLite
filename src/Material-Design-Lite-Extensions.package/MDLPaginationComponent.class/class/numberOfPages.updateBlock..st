instance creation
numberOfPages: aBlockOrInteger updateBlock: aBlock
	^ self new
		numberOfPages: aBlockOrInteger;
		updateBlock: aBlock;
		yourself