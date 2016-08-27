initialization
initializeFooter
	^ MDLSmallFooter new
				onRightSideAddComponents: self initializeFooterRightSideComponents;
				onLeftSideAddLinks: self initializeFooterLeftSideLinks;
				yourself