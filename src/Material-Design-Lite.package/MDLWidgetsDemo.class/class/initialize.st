initialize
initialize
	super initialize.
	WAAdmin register: MDLWidgetsDemo asApplicationAt: #MDLWidgetsDemo.
	ZnZincServerAdaptor startOn: 8080