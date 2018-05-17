tests
testMiniFab
	self
		assert: [ :html | 
			html mdlAnchorButton
				miniFab;
				with: '+' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--mini-fab">+</a>'