initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Components';
		drawerSection: self initializeDrawer;
		footerSection: self initializeFooter;
		fixedDrawer;
		yourself