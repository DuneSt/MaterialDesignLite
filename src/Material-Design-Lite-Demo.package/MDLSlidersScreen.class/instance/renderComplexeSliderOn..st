rendering
renderComplexeSliderOn: html
	html
		mdlSliderContainer: [ 
			| outputId |
			outputId := html nextId.
			html label
				for: html nextId;
				with: 'A better example'.
			html mdlIcon: #hourglass_empty.
			html mdlSlider
				onInput: outputId , '.value = ' , html lastId , '.value';
				id: html lastId;
				min: 0;
				max: 10000;
				step: 100;
				value: 100;
				showBounds.
			html output
				id: outputId;
				for: html lastId;
				with: 100 ]