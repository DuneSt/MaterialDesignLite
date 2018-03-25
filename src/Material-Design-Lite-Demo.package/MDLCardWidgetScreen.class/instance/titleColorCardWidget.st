sections
titleColorCardWidget
	^ OrderedDictionary new
		add: 'Primary color card' -> #renderPrimaryColorCardOn:;
		add: 'Accent color card' -> #renderAccentColorCardOn:;
		yourself