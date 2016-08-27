initialization
initialize
	| screen footer layout |
	super initialize.
	screen := MDLExampleScreen new.	
	footer := self initializeFooter.
	layout := self initializeLayout.
	"footer := self initializeMiniFooter."
	screen addDecoration: (MDLScreenFooter newWithFooter: footer).
	screen addDecoration: (MDLScreenLayout newWithLayout: layout).
	self addScreen: screen