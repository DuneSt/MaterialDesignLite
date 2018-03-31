sections
radioButton
	^ OrderedDictionary new
		add: 'Radio on' -> #renderRadioOnOn:;
		add: 'Radio off' -> #renderRadioOffOn:;
		add: 'Radio full example' -> #renderRadioFullOn:;
		yourself