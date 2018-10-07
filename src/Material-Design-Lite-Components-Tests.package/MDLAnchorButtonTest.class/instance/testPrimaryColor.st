tests
testPrimaryColor
	self
		assert: [ :html | 
			html mdlAnchorButton
				primaryColor;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--primary">Validate</a>'