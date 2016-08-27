initialization
initialize
	| screen footer |
	super initialize.
	screen := MDLExampleScreen new.
	footer := self initializeFooter.
	screen := screen addDecoration: (MDLScreenFooter newWithFooter: footer).
	self addScreen: screen