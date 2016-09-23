rendering
renderComplexTooltipsOn: html
html mdlGrid class: 'examples'; with: [ 
	html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlIcon id: 'tt3'; with: 'cloud_upload'.
			html mdlTooltip for: 'tt3'; with: [ 
				html text: 'Upload '. 
				html strong: 'file.zip' ] ] size: 2.
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlIcon id: 'tt4'; with: 'share'.
			html mdlTooltip for: 'tt4'; with: [ 
				html text: 'Share your content'. 
				html break. 
				html text: 'via social media' ] ] size: 2.
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Rich' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Multiple Lines' size: 2.
		html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltipRichCode ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tooltipMultilineCode ]
