as yet unclassified
renderSliderWithDefaultValueOn: html
	html div
		class: 'mdl-typography--text-center';
		class: 'centered-content';
		with: [ html mdlSlider min:0; max: 100; value: 75.
			html paragraph: 'Slider with a default value' ].
	html
		code: [ html preformatted
				with:
					'html mdlSlider
	min:0;
	max: 100;
	value: 75' ]