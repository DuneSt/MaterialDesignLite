rendering
renderScreenContentOn: html
	self render: self simpleSliders on: html.
	html small: 'Warning: Showing bonds might not work on all browsers.'.
	self render: self advanceSlider on: html