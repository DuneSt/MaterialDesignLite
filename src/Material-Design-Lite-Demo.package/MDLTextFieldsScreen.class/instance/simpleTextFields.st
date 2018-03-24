sections
simpleTextFields
	^ OrderedDictionary new
		add: ' Text' -> #renderTextFieldOn:;
		add: 'Numeric' -> #renderNumberTextFieldOn:;
		yourself