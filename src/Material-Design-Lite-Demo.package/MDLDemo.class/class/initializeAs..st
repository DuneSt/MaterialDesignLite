initialization
initializeAs: aString
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aString)
		preferenceAt: #sessionClass put: MDLDemoSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary;
		yourself