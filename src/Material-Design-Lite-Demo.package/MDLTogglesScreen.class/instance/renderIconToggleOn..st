rendering
renderIconToggleOn: html
	html heading level5; class: 'section-title'; with: 'Icon toggle'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-1'; with: [ 
								html mdlIconToggle value: true;  id: 'icon-toggle-1'.
								html mdlIconToggleLabel: 'format_bold' ] ] size: 1.
						html mdlLayoutSpacer .
					html
						mdlCell: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-2'; with: [ 
								html mdlIconToggle id: 'icon-toggle-2'.
								html mdlIconToggleLabel: 'format_italic' ] ] size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Icon on' size: 1.
		html mdlLayoutSpacer.
		html mdlCell: 'Icon off' size: 1.
		html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle2Code ]