rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Sliders'.
			html paragraph: 'Selecting a value out of a range.'.
			self renderDefaultSliderOn: html.
			self renderSliderWithDefaultValueOn: html.
			self renderSliderDisabledOn: html ]