rendering
renderRadioButtonOn: html
	html heading level5; class: 'section-title'; with: 'Radio button'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlRadioContainer rippleEffect; for: 'option-1'; with: [ 
								html mdlRadioButton beChecked; value: '1'; attributeAt: 'name' put: 'options'; id: 'option-1'.
								html mdlRadioLabel: 'First' ] ] size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlRadioContainer rippleEffect; for: 'option-2'; with: [ 
								html mdlRadioButton value: '2'; attributeAt: 'name' put: 'options'; id: 'option-2'.
								html mdlRadioLabel: 'Second' ] ] size: 1.
					html mdlLayoutSpacer ].
				html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Radio on' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Radio off' size: 1.
					html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self radioButtonCode ]