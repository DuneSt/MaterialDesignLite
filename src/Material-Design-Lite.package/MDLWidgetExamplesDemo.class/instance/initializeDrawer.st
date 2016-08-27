initialization
initializeDrawer
	^ MDLIconDrawerSection new
		links: self initializeDrawerLinks;
		yourself