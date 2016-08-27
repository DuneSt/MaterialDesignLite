rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ 
			html heading level5 class: 'section-title';with: 'Tooltips'.
			html paragraph: 'Useful informations on hover.'.
			self renderSimpleTooltipsOn: html.
			self renderComplexTooltipsOn: html.
		]