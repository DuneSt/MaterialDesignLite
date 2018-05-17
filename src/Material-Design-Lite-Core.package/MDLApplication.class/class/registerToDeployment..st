instance creation
registerToDeployment: aName
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aName)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		yourself