sections
specialTextFields
	^ OrderedDictionary new
		add: 'Multiple line' -> #renderMultiLineTextFieldOn:;
		add: 'Expanding' -> #renderExpandingTextFieldOn:;
		yourself