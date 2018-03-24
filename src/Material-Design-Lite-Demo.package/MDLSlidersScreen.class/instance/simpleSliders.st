sections
simpleSliders
	^ OrderedDictionary new
		add: 'Default Slider' -> #renderDefaultSliderOn:;
		add: 'Starting value' -> #renderStartingValueSliderOn:;
		add: 'Disabled slider' -> #renderDisabledSliderOn:;
		yourself