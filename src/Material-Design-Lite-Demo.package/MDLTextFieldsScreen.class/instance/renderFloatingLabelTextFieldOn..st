demos
renderFloatingLabelTextFieldOn: html
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]