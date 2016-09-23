rendering
renderInputOn: html
	| inputId |
	inputId := self labelId.
	html mdlTextFieldContainer
		style: 'display: block';
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: inputId;
				with: self magritteDescription label.
			html mdlTextFieldInput
				id: inputId;
				on: #string of: self ]