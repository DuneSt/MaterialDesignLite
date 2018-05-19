tests
testFor
	self
		assert: [ :html | 
			html mdlButton
				for: html nextId;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button" for="id1" type="submit">Validate</button>'