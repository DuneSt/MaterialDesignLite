rendering
renderDefaultSliderOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlSlider
						min: 0;
						max: 10000;
						value: 0.
					html paragraph: 'Default slider' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlSlider
	min:0;
	max: 10000;
	value: 0' ]