demos
renderIconButtonCodeOn: html
	"We could also use the #icon: method"
	html mdlButton
		icon;
		with: [ html mdlIcon: 'mood' ]