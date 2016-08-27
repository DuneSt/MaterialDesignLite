initialization
initialize
	super initialize.
	self defaultScreens
		do: [ :each | 
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeLayout).
			self addScreen: each ].
	activeScreen := screens first