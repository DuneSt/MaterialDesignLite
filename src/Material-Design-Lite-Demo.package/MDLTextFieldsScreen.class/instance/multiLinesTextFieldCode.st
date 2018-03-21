code
multiLinesTextFieldCode
	^ 'html mdlTextFieldContainer: [ 
	html mdlTextFieldLabel for: ''multiline-text''; with: ''Text lines...''.
	html mdlTextArea id: ''multiline-text''; type: ''text''; rows: 3  ]'