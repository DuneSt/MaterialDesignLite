rendering
renderScreenContentOn: html
	html paragraph: 'Indicate loading and progress states.'.
	self renderProgressBarOn: html.
	self renderBufferingProgressBarOn: html.
	self renderIndeterminateProgressBarOn: html.
	self renderSpinnersOn: html