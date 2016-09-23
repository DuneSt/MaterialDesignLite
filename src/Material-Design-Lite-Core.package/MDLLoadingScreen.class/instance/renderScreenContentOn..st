rendering
renderScreenContentOn: html
	self renderProgressBarOn: html.
	self renderBufferingProgressBarOn: html.
	self renderIndeterminateProgressBarOn: html.
	self renderSpinnersOn: html