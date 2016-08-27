initialization
initializeLayout
	^ MDLLayoutWidget new
		title: 'Op Website GG !';
		links: self initializeHeaderLinks;
		yourself