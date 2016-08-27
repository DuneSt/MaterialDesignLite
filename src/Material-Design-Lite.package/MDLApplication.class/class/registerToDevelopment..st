instance creation
registerToDevelopment: aName
	| app |
	WAAdmin applicationDefaults
		addParent: WADevelopmentConfiguration instance.
	app := WAAdmin register: self asApplicationAt: aName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary.
	^ app