code
floatingTextFieldCode 
		^ 'html mdlTextFieldContainer floatingLabel; with: [ 
	html mdlTextFieldLabel for: ''floating-text''; with: ''Text...''.
	html mdlTextFieldInput id: ''floating-text''; type: ''text'''