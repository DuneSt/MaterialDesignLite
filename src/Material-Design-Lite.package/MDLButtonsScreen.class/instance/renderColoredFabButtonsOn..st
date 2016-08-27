rendering
renderColoredFabButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
			html mdlLayoutSpacer.
			html mdlCell size: 1; with: [ 
				html mdlButton
					fab;
					colored;
					with: '+' ].
			html mdlCell size: 1; with: [ 
				html mdlButton
					fab;
					colored;
					rippleEffect;
					with: '+' ].
			html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Colored FAB' size: 1.
		html mdlCell: 'With ripple' size: 1.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self coloredFabButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self coloredFabRippleEffectButton2Code ]