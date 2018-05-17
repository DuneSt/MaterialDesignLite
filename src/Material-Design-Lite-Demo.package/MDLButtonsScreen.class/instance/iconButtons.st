sections
iconButtons
	^ OrderedDictionary new
		add: 'Icon button' -> #renderIconButtonCodeOn:;
		add: 'Colored' -> #renderIconColoredButtonCodeOn:;
		add: 'Label icon' -> #renderLabelIconButtonCodeOn:;
		yourself