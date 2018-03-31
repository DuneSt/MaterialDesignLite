sections
checkbox
	^ OrderedDictionary new
		add: 'Check on' -> #renderCheckOnOn:;
		add: 'Check off' -> #renderCheckOffOn:;
		yourself