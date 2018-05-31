tests
testRemoveScreen
	| screen |
	screen := WAComponent new.
	app addScreen: screen.
	self assert: app screens size equals: 1.
	app removeScreen: screen.
	self assert: app screens isEmpty