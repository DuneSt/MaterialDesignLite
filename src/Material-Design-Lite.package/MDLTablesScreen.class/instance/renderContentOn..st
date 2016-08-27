as yet unclassified
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 with: 'Tables'.
			html paragraph: 'Organize data.'.
			self renderSimpleTableOn: html. ]