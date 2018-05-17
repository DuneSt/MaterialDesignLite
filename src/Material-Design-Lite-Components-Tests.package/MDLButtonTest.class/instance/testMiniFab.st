tests
testMiniFab
	self
		assert: [ :html | 
			html mdlButton
				miniFab;
				with: '+' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--mini-fab" type="submit">+</button>'