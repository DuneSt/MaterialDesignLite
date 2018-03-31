demos
renderInputNumberOn: html
	html mdlTextFieldContainer
		floatingLabel;
		expandable;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				type: 'number' ]