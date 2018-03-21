accessing
coloredButtons
	^ OrderedDictionary new
		add: 'Colored button' -> #renderColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;
		yourself