demos
renderColoredFabRippleEffectButton2CodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		colored;
		rippleEffect;
		with: '+'