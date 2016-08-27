initialization
initialize
	super initialize.
	self screens: (self class defaultScreenClasses collect: [ :aScreenClass | aScreenClass new ]).
	self screens
		do: [ :each | 
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeLayout).
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter) ].
	activeScreen := screens first.
	self colors: 'blue_grey-orange'