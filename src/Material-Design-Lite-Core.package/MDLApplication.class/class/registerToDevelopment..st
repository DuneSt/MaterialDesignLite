instance creation
registerToDevelopment: aName
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults addParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aName)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		yourself