demos
renderRaisedColoredAccentRippleEffectButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'