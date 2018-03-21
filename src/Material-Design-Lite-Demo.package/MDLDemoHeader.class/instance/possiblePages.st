accessing
possiblePages
	self flag: #todo. "implement the page switch mechanism"
	^ OrderedDictionary with: 'Components' -> [ self switchToComponents ] with: 'Widgets' -> [ self switchToWidgets ]