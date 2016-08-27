initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Components';
		drawerSection: self initializeDrawer;
		fixedDrawer;
		yourself