demos
renderFloatingLabelNumberTextFieldOn: html
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				pattern: '-?[0-9]*(\.[0-9]+)?'.
			html mdlTextFieldError: 'Input is not a number !' ]