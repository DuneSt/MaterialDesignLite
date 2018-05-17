tests
testRaised
	self
		assert: [ :html | 
			html mdlAnchorButton
				raised;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--raised">Validate</a>'