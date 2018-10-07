sections
raisedColoredButtons
	^ OrderedDictionary new
		add: 'Colored button' -> #renderRaisedColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderRaisedColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderRaisedColoredAccentRippleEffectButtonCodeOn:;
		yourself