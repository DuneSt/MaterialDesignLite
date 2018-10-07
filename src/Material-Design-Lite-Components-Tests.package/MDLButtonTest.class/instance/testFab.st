tests
testFab
	self
		assert: [ :html | 
			html mdlButton
				fab;
				with: '+' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--fab" type="submit">+</button>'