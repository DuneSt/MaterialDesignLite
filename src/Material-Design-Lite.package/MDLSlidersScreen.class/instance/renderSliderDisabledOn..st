rendering
renderSliderDisabledOn: html
	html div
		class: 'examples';
		class: 'centered-content';
		with: [ 
					html mdlSlider
						min: 0;
						max: 300;
						value: 10;
						disabled.
					html paragraph: 'Disabled slider' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self sliderDisabledCode ]