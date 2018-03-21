initialization
initialize
	super initialize.
	screens := Dictionary new.
	self initializeComponentsScreens.
	self initializeWidgetsScreens.
	activeScreen := (screens at: 'components') first.
	
	self primaryColor: MDLColor pink secondaryColor: MDLColor teal