as yet unclassified
renderIconToggleOn: html
	html heading level5; class: 'section-title'; with: 'Icon toggle'.
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-1'; with: [ 
								html mdlIconToggle value: true;  id: 'icon-toggle-1'.
								html mdlIconToggleLabel: 'format_bold' ] ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-2'; with: [ 
								html mdlIconToggle id: 'icon-toggle-2'.
								html mdlIconToggleLabel: 'format_italic' ] ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Icon on' ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Icon off' ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone. ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle2Code ]