tests
testAccentColor
	self
		assert: [ :html | 
			html mdlButton
				accentColor;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--accent" type="submit">Validate</button>'