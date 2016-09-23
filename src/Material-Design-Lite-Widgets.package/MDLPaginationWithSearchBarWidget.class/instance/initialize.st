initialization
initialize
	super initialize.
	searchLabel := 'Search...'.
	testingBlock := [ :anObject :aString | anObject matches: aString ]