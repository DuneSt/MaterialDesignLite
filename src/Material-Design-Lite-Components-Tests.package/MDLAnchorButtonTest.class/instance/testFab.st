tests
testFab
	self
		assert: [ :html | 
			html mdlAnchorButton
				fab;
				with: '+' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--fab">+</a>'