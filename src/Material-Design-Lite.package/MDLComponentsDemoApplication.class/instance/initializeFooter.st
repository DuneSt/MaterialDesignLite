initialization
initializeFooter
	^ MDLFooter new
		atTopRightAddComponents: self initializeTopRightComponents;
		atMiddleAddComponents: self initializeFooterMiddleSection;
		yourself