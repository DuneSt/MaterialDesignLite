initialization
initialize
	super initialize.
	self selectedScreen: self sortedScreens anyOne new.
	self list: self defaultList