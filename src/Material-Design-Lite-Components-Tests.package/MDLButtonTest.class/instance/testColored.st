tests
testColored
	self
		assert: [ :html | 
			html mdlButton
				colored;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--colored" type="submit">Validate</button>'