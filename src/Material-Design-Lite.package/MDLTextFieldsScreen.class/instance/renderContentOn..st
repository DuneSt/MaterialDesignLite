as yet unclassified
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 with: 'Text fields'.
			html paragraph: 'Textual input components.'.
			self renderSimpleTextFieldOn: html. ]