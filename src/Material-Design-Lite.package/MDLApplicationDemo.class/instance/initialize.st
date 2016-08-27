initialization
initialize
	| screen header |
	super initialize.
	screen := MDLExampleScreen new.
	header := (MDLHeader new links: self initializeLinks; yourself) beCollapsible.
	screen := screen addDecoration: (MDLScreenHeader newWithHeader: header).
	self addScreen: screen