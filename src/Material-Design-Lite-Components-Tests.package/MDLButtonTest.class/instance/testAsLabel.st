tests
testAsLabel
	self
		assert: [ :html | 
			html mdlButton
				asLabel;
				with: 'Validate' ]
		generates: '<label class="mdl-button mdl-js-button" type="submit">Validate</label>'