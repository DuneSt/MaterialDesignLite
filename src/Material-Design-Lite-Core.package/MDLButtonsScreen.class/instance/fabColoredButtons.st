accessing
fabColoredButtons
	^ OrderedDictionary new
		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;
		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;
		yourself