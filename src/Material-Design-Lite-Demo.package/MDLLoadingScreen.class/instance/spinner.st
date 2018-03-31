sections
spinner
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultSpinnerOn:;
		add: 'Single color' -> #renderSingleColorSpinnerOn:;
		yourself