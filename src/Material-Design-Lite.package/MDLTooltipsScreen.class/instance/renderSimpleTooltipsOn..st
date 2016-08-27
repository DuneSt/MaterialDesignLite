as yet unclassified
renderSimpleTooltipsOn: html
html mdlGrid class: 'examples'; with: [ 
	html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html
			mdlCellDesktop: 1
			tablet: 1
			phone: 2
			with: [ 
				html mdlIcon id: 'tt1'; with: 'add'.
				html mdlTooltip for: 'tt1'; with: 'Follow' ].
		html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
		html
			mdlCellDesktop: 1
			tablet: 1
			phone: 2
			with: [ 
				html mdlIcon id: 'tt2'; with: 'print'.
				html mdlTooltip large; for: 'tt2'; with: 'Print' ].
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html mdlCellDesktop: 1 tablet: 1 phone: 2 with: [ html text: 'Simple' ].
		html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
		html mdlCellDesktop: 1 tablet: 1 phone: 2 with: [ html text: 'Large' ].
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltip1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltip2Code ]
