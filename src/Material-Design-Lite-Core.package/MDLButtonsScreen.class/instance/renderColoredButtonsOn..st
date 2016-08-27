rendering
renderColoredButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								primaryColor;
								raised;
								with: 'Button' ]
						size: 1.
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								accentColor;
								with: 'Button' ]
						size: 1.
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								accentColor;
								rippleEffect;
								with: 'Button' ]
						size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Colored button' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Accent colored' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'With Ripples' size: 1.
					html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self coloredButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self coloredAccentButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self coloredAccentRippleEffectButtonCode ]