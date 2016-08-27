initialization
initialize
	super initialize.
	self title: 'Header'.
	links := Dictionary new.
	self beCollapsible: true