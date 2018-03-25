sections
floatingLabelTextFields
	^ OrderedDictionary new
		add: 'Text with floating label' -> #renderFloatingLabelTextFieldOn:;
		add: 'Numeric with floating label' -> #renderFloatingLabelNumberTextFieldOn:;
		add: 'Input number' -> #renderInputNumberOn:;
		yourself