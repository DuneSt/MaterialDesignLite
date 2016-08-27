instance creation
registerToDeployment: aName
	| app |
	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
	app := WAAdmin register: self asApplicationAt: aName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary.
	^ app