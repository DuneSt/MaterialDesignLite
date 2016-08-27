code
simpleNumericTextFieldCode 
		^ 'html mdlTextFieldContainer with: [ 
	html mdlTextFieldLabel for: ''input_text2''; with: ''Number...''.
	html mdlTextFieldInput id: ''input_text2''; pattern: ''-?[0-9]*(\.[0-9]+)?''; type: ''text''.
	html mdlTextFieldError: ''Input is not a number!'' ]'