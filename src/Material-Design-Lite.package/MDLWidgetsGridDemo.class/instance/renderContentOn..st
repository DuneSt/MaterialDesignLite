render
renderContentOn: html
	html mdlGrid: [ 
		html mdlCellDesktop: 2 tablet: 4 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '50% tablet' .
			html break.
			html text: '16.6% desktop' ].
		html mdlCellDesktop: 2 tablet: 4 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '50% tablet' .
			html break.
			html text: '16.6% desktop' ].
		html mdlCellDesktop: 2 tablet: 8 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '100% tablet' .
			html break.
			html text: '16.6% desktop' ].
		html mdlCellDesktop: 2 tablet: 5 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '62.5% tablet' .
			html break.
			html text: '16.6% desktop' ].
		html mdlCellDesktop: 2 tablet: 3 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '37.5% tablet' .
			html break.
			html text: '16.6% desktop' ].
		html mdlCellDesktop: 2 tablet: 8 phone: 2	with: [ 
			html text: '50% phone'.
			html break. 
			html text: '100% tablet' .
			html break.
			html text: '16.6% desktop' ] ]