initialization
initialize
	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
	^ (WAAdmin register: self asApplicationAt: 'MDLDemo')
		preferenceAt: #sessionClass put: MDLDemoSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary;
		yourself