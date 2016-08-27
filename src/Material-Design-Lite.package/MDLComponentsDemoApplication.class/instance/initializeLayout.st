initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Components';
		drawerSection: self initializeDrawer;
		headerSection: self initializeHeader;
		fixedDrawer;
		fixedHeader;
		yourself