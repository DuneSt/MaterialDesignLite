initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Widgets';
		drawerSection: self initializeDrawer;
		headerSection: self initializeHeader;
		fixedDrawer;
		fixedHeader;
		yourself