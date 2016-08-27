initialization
initialize
	super initialize.
	self
		screens: (MDLWidgetExampleScreen subclasses collect: [ :aScreenClass | aScreenClass new ]).
	self screens
		do: [ :each | each addDecoration: (MDLScreenLayout newWithLayout: self initializeLayout) ].
	activeScreen := screens first.
	self primaryColor: MDLColor indigo secondaryColor: MDLColor pink