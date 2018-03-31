demos
renderIconButtonCodeOn: html
	"We could also use the #icon: method"
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		icon;
		with: [ html mdlIcon: 'mood' ]