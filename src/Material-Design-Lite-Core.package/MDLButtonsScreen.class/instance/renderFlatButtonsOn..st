rendering
renderFlatButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: [ html mdlButton: 'Button' ] size: 1.
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								rippleEffect;
								with: 'Button' ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								disabled;
								with: 'Button' ]
						size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Flat button' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'With ripple' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Disabled' size: 1.
					html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self flatButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self flatRippleEffectButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self flatDisabledButtonCode ]