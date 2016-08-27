initialization
initializeDrawer
	^ MDLSimpleDrawerSection new
		links: self initializeHeaderLinks;
		yourself