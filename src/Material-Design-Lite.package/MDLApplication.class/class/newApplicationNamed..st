instance creation
newApplicationNamed: aName
	| app |
	self new applicationName: aName.
	app := WAAdmin register: self asApplicationAt: aName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary.
	^ app