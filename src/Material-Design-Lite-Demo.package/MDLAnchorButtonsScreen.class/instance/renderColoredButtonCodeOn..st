demos
renderColoredButtonCodeOn: html
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		primaryColor;
		with: 'Button'