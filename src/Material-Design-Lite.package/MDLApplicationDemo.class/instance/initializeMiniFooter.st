initialization
initializeMiniFooter
	^ MDLSmallFooter new
		addLinksToLeftSection: self initializeBottomLinks asDictionary;
		addComponentsToRightSection: self initializeTopComponents2;
		yourself