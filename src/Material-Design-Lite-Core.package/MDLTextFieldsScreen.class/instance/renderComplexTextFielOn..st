rendering
renderComplexTextFielOn: html
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer: [ 
				html mdlTextFieldLabel for: 'multiline-text'; with: 'Text lines...'.
				html mdlTextArea id: 'multiline-text'; type: 'text'; rows: 3  ] ] size: 2.
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer expandable; with: [ 
				html mdlButton asLabel;icon; for: 'expandable-textfield'; with: [ html mdlIcon: 'search' ].
				html mdlTextFieldExpandableHolder: [ 
					html mdlTextFieldInput id: 'expandable-textfield'; type: 'text'.
					html mdlTextFieldLabel for: 'expandable-textfield'; with: 'Expandable Input'
					 ] ] ] size: 2.
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Text with floating label' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Number with floating label' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self multiLinesTextFieldCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self expandableTextFieldCode ]