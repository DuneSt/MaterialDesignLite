sections
switch
	^ OrderedDictionary new
		add: 'Switch on' -> #renderSwitchOnOn:;
		add: 'Switch off' -> #renderSwitchOffOn:;
		yourself