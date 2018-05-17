demos
renderRaisedColoredButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		primaryColor;
		with: 'Button'