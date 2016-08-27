initialize
initialize
	super initialize.
	WAAdmin register: MDLComponentsDemo asApplicationAt: 'MDLComponentsDemo'.
	ZnZincServerAdaptor startOn: 8080