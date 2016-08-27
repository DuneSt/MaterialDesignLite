rendering
renderScreenContentOn: html
	html paragraph: 'Selecting a value out of a range.'.
	self renderDefaultSliderOn: html.
	self renderSliderWithDefaultValueOn: html.
	self renderSliderDisabledOn: html