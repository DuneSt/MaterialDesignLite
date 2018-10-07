tests
testPrimaryColor
	self
		assert: [ :html | 
			html mdlButton
				primaryColor;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--primary" type="submit">Validate</button>'