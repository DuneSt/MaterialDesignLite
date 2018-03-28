sections
flatButtons
	^ OrderedDictionary new
		add: 'Flat button' -> #renderFlatButtonCodeOn:;
		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;
		yourself