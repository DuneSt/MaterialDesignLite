rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Loading'.
			html paragraph: 'Indicate loading and progress states.'.
			self renderProgressBarOn: html.
			self renderBufferingProgressBarOn: html.
			self renderIndeterminateProgressBarOn: html.
			self renderSpinnersOn: html ]