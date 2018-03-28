demos
renderFlatRippleEffectButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		rippleEffect;
		with: 'Button'