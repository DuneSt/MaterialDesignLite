initialization
initializeComponentsLayout
	^ MDLLayoutWidget new
		title: 'Components';
		drawerSection: self initializeComponentsDrawer;
		headerSection: self initializeComponentsHeader;
		fixedDrawer;
		fixedHeader;
		yourself