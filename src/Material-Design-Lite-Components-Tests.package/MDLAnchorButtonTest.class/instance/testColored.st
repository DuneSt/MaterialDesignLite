tests
testColored
	self
		assert: [ :html | 
			html mdlAnchorButton
				colored;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--colored">Validate</a>'