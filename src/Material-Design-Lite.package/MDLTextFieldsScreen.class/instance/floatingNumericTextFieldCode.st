code
floatingNumericTextFieldCode 
		^ 'html mdlTextFieldContainer floatingLabel; with: [ 
	html mdlTextFieldLabel for: ''floating-numeric''; with: ''Number...''.
	html mdlTextFieldInput id: ''floating-numeric''; type: ''text''; pattern: ''-?[0-9]*(\.[0-9]+)?''.
	html mdlTextFieldError: ''Input is not a number !'''