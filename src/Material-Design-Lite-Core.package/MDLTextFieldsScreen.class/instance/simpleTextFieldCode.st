code
simpleTextFieldCode 
		^ 'html mdlTextFieldContainer with: [ 
	html mdlTextFieldLabel for: ''input_text''; with: ''Text...''.
	html mdlTextFieldInput id: ''input_text''; type: ''text'' ]'