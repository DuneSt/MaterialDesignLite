as yet unclassified
renderSliderDisabledOn: html
	html div
		class: 'mdl-typography--text-center';
		class: 'centered-content';
		with: [ html mdlSlider min:0; max: 300; value: 10; disabled.
			html paragraph: 'Disabled slider' ].
	html
		code: [ html preformatted
				with:
					'html mdlSlider
	min:0;
	max: 300;
	value: 10;
	disabled' ]