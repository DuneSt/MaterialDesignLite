tests
testFor
	self
		assert: [ :html | 
			html mdlAnchorButton
				for: html nextId;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button" for="id1">Validate</a>'