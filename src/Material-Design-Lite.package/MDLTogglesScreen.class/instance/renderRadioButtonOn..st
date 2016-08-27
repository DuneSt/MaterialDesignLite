as yet unclassified
renderRadioButtonOn: html
	html heading level5; class: 'section-title'; with: 'Radio button'.
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlRadioContainer rippleEffect; for: 'option-1'; with: [ 
								html mdlRadioButton beChecked; value: '1'; attributeAt: 'name' put: 'options'; id: 'option-1'.
								html mdlRadioLabel: 'First' ] ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html
						mdlCellDesktop: 1
						tablet: 1
						phone: 2
						with: [ 
							html mdlRadioContainer rippleEffect; for: 'option-2'; with: [ 
								html mdlRadioButton value: '2'; attributeAt: 'name' put: 'options'; id: 'option-2'.
								html mdlRadioLabel: 'Second' ] ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Radio on' ].
					html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
					html mdlCell desktopSize: 1; tabletSize: 1; phoneSize: 2; with: [ html text: 'Radio off' ].
					html mdlCell desktopSize: 4; tabletSize: 2; hidePhone. ].
	html preformatted with: [ html code class: 'smalltalk'; with: self radioButtonCode ]