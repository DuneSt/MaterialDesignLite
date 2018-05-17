tests
testAccentColor
	self
		assert: [ :html | 
			html mdlAnchorButton
				accentColor;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--accent">Validate</a>'