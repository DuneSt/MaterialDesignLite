tests
testRaised
	self
		assert: [ :html | 
			html mdlButton
				raised;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--raised" type="submit">Validate</button>'