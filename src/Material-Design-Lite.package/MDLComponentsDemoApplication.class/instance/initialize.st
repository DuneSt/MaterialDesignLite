initialization
initialize
	super initialize.
	self defaultScreens
		do: [ :each | 
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeLayout).
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter).
			self addScreen: each ].
	activeScreen := screens first