rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Tables'.
			html paragraph: 'Organize data.'.
			self renderSimpleTableOn: html. ]