demos
renderFabRippleEffectButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		rippleEffect;
		with: '+'