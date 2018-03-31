demos
renderColoredAccentButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		accentColor;
		with: 'Button'