as yet unclassified
renderCheckboxOn: html
	html heading level5; class: 'section-title'; with: 'CHECKBOX'.
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlCheckboxContainer rippleEffect; for: 'checkbox-1'; with: [ 
								html mdlCheckbox value: true; id: 'checkbox-1'.
								html mdlCheckboxLabel: 'Checkbox' ] ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlCheckboxContainer rippleEffect; for: 'checkbox-2'; with: [ 
								html mdlCheckbox value: false; id: 'checkbox-2'.
								html mdlCheckboxLabel: 'Checkbox' ] ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Check on' ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Check off' ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone. ].
	html preformatted with: [ html code class: 'smalltalk'; with: self checkbox1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self checkbox2Code ]