initialization
initialize
	| footer |
	super initialize.
	footer := self initializeFooter.
	self defaultScreens
		do: [ :each | 
			each addDecoration: (MDLScreenFooter newWithFooter: footer).
			self addScreen: each ].
	activeScreen := screens first