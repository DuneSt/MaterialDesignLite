rendering
renderFabButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
			html mdlLayoutSpacer.
			html mdlCell size:1; with: [ 
				html mdlButton
					fab;
					with: '+' ].
			html mdlCell size:1; with: [ 
				html mdlButton
					fab;
					rippleEffect;
					with: '+' ].
			html mdlCell size: 1; with: [ 
				html mdlButton
					fab;
					disabled;
					with: '+' ].
			html mdlLayoutSpacer ].
	html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Plain FAB' size: 1.
					html mdlCell: 'With ripple' size: 1.
					html mdlCell: 'Disabled' size: 1.
					html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self fabButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self fabRippleEffectButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self fabDisabledButtonCode ]