as yet unclassified
renderSimpleTextFieldOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with:
			[ html mdlLayoutSpacer.
			html
				mdlCell:
					[ html mdlTextFieldContainer
						with:
							[ html mdlTextFieldLabel
								for: 'input_text';
								with: 'Text...'.
							html mdlTextFieldInput
								id: 'input_text';
								type: 'text' ] ]
				size: 2.
			html
				mdlCell:
					[ html mdlTextFieldContainer
						with:
							[ html mdlTextFieldLabel
								for: 'input_text2';
								with: 'Number...'.
							html mdlTextFieldInput
								id: 'input_text2';
								pattern: '-?[0-9]*(\.[0-9]+)?';
								type: 'text'.
							html mdlTextFieldError: 'Input is not a number!' ] ]
				size: 2.
			html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with:
			[ html mdlLayoutSpacer.
			html mdlCell: 'Text' size: 2.
			html mdlCell: 'Numeric' size: 2.
			html mdlLayoutSpacer ].
	html preformatted
		with:
			[ html code
				class: 'smalltalk';
				with:
					'"Text"
html mdlTextFieldContainer
	with:
		[ html mdlTextFieldLabel
			for: ''input_text'';
			with: ''Text...''.
		html mdlTextFieldInput
			id: ''input_text'';
			type: ''text'' ]
"Numeric"							
html mdlTextFieldContainer
	with: 
		[ html mdlTextFieldLabel
			for: ''input_text2'';
			with: ''Number...''.
		html mdlTextFieldInput
			id: ''input_text2'';
			pattern: ''-?[0-9]*(\.[0-9]+)?'';
			type: ''text''.
		html mdlTextFieldError: ''Input is not a number!''' ]