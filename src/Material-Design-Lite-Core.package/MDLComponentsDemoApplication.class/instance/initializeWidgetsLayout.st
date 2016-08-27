initialization
initializeWidgetsLayout
	^ MDLLayoutWidget new
		title: 'Widgets';
		drawerSection: self initializeWidgetsDrawer;
		headerSection: self initializeWidgetsHeader;
		fixedDrawer;
		fixedHeader;
		yourself