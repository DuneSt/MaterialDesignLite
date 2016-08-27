rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Dialog'.
			html paragraph: 'Modal windows for dedicated user input.'.
			self renderSimpleDialogOn: html .
			html break.
			html break.
			self renderComplexDialogOn: html ]