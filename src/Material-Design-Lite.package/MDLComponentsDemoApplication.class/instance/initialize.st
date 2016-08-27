initialization
initialize
	super initialize.
	screens := Dictionary new.
	self initializeComponentsScreens.
	self initializeWidgetsScreens.
	activeScreen := (screens at: 'components') first.
	
	self primaryColor: MDLColor indigo secondaryColor: MDLColor pink