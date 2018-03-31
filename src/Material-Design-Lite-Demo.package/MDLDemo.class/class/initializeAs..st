initialization
initializeAs: aString
	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
	^ (WAAdmin register: self asApplicationAt: aString)
		preferenceAt: #sessionClass put: MDLDemoSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary;
		yourself