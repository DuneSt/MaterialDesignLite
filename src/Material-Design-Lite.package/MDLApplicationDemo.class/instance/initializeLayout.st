initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Op Website GG !';
		headerSection: self initializeHeader;
		drawerSection: self initializeDrawer;
		yourself