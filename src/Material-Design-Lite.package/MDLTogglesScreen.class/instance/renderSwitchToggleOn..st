as yet unclassified
renderSwitchToggleOn: html
	html heading level5; class: 'section-title'; with: 'Switch toggle'.
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlSwitchContainer rippleEffect; for: 'switch-toggle-1'; with: [ 
								html mdlSwitch value: true;  id: 'switch-toggle-1'.
								html mdlSwitchLabel: 'On / Off' ] ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlSwitchContainer rippleEffect; for: 'switch-toggle-2'; with: [ 
								html mdlSwitch id: 'switch-toggle-2'.
								html mdlSwitchLabel: 'On / Off' ] ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Icon on' ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Icon off' ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone. ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle2Code ]