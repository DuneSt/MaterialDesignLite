rendering
renderButtonsPanelOn: html
	html mdlTabsPanel
		id: 'buttons';
		with: [ 
			html heading level: 4; with: 'Rectangle Buttons'.
			html mdlButton raised; rippleEffect; with: 'Default'.
			html mdlButton raised; rippleEffect; colored; with: 'Base Color'.
			html mdlButton raised; rippleEffect; accentColor; with: 'Accent Color'.
			"html mdlButton raised; rippleEffect; accentColor; with: 'Green'."
			"html mdlButton raised; rippleEffect; accentColor; with: 'Red'."
			html mdlButton rippleEffect; with: 'Flat'.
			html mdlButton raised; rippleEffect; disabled; with: 'Disabled'.
			
			html heading level: 4; with: 'Fab - Floating Action Buttons'.
			html mdlButton rippleEffect; fab; with: [ html mdlIcon: 'add' ].
			html mdlButton rippleEffect; fab; colored; with: [ html mdlIcon: 'add' ].
			html mdlButton rippleEffect; fab; miniFab; with: [ html mdlIcon: 'add' ].
			html mdlButton rippleEffect; icon; with: [ html mdlIcon: 'mood' ].
		]