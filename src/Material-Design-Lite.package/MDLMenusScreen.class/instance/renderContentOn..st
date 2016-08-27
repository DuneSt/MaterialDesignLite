as yet unclassified
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 with: 'Menus'.
			html paragraph: 'Lists of clickable actions.'.
			self renderBottomLeftMenuOn: html.
			self renderTopLeftMenuOn: html ]