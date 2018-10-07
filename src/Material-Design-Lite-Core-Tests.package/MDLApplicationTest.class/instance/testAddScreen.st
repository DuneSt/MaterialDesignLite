tests
testAddScreen
	| screen |
	self assert: app screens size equals: 0.
	screen := WAComponent new.
	app addScreen: screen.
	self assert: app screens size equals: 1.
	self assert: app screens anyOne equals: screen