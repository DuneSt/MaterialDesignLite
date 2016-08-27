initialization
initializeDrawer
	^ MDLSimpleDrawerSection new
		links: self initializeDrawerLinks;
		yourself