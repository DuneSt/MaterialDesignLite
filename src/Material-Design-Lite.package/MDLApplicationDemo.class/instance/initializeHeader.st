initialization
initializeHeader
	^ MDLSimpleRowHeaderSection new
		links: self initializeHeaderLinks;
		yourself