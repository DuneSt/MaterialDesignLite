sections
fabButtons
	^ OrderedDictionary new
		add: 'Plain FAB' -> #renderFabButtonCodeOn:;
		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;
		yourself