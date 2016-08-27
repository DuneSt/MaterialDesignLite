as yet unclassified
renderComplexTooltipsOn: html
html mdlGrid class: 'examples'; with: [ 
	html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html
			mdlCellDesktop: 1
			tablet: 1
			phone: 2
			with: [ 
				html mdlIcon id: 'tt3'; with: 'cloud_upload'.
				html mdlTooltip for: 'tt3'; with: [ 
					html text: 'Upload '. 
					html strong: 'file.zip' ] ].
		html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
		html
			mdlCellDesktop: 1
			tablet: 1
			phone: 2
			with: [ 
				html mdlIcon id: 'tt4'; with: 'share'.
				html mdlTooltip for: 'tt4'; with: [ 
					html text: 'Share your content'. 
					html break. 
					html text: 'via social media' ] ].
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone.
		html mdlCellDesktop: 1 tablet: 1 phone: 2 with: [ html text: 'Rich' ].
		html mdlCell desktopSize: 2; tabletSize: 2; hidePhone.
		html mdlCellDesktop: 1 tablet: 1 phone: 2 with: [ html text: 'Multiple Lines' ].
		html mdlCell desktopSize: 4; tabletSize: 2; hidePhone ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltipRichCode ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltipMultilineCode ]
