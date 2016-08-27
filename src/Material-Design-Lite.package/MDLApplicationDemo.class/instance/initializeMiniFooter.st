initialization
initializeMiniFooter
	^ MDLSmallFooter new
		onLeftSideAddLinks: self initializeBottomLinks;
		onRightSideAddComponents: self initializeTopComponents2;
		yourself