running
configureTestApp: app
	super configureTestApp: app.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: MDLTestsLibrary