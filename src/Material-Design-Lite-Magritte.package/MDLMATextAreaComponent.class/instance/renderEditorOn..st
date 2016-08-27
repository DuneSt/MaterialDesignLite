rendering
renderEditorOn: html
	| inputId |
	inputId := self labelId.
	html mdlTextFieldContainer
		style: 'display: block';
		with: [ html mdlTextArea
				id: inputId;
				rows: self magritteDescription lineCount;
				on: #string of: self.
			html mdlTextFieldLabel
				for: inputId;
				with: self magritteDescription label ]