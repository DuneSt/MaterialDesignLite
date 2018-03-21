accessing
iconButtons
	^ OrderedDictionary new
		add: 'Icon button' -> #renderIconButtonCodeOn:;
		add: 'Colored' -> #renderIconColoredButtonCodeOn:;
		yourself