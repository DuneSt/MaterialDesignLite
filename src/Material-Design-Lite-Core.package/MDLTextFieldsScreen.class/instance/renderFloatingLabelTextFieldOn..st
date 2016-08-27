rendering
renderFloatingLabelTextFieldOn: html
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer floatingLabel; with: [ 
				html mdlTextFieldLabel for: 'floating-text'; with: 'Text...'.
				html mdlTextFieldInput id: 'floating-text'; type: 'text'  ] ] size: 2.
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer floatingLabel; with: [ 
				html mdlTextFieldLabel for: 'floating-numeric'; with: 'Number...'.
				html mdlTextFieldInput id: 'floating-numeric'; type: 'text'; pattern: '-?[0-9]*(\.[0-9]+)?'.
				html mdlTextFieldError: 'Input is not a number !' ] ] size: 2.
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Text with floating label' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Number with floating label' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self floatingTextFieldCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self floatingNumericTextFieldCode ]