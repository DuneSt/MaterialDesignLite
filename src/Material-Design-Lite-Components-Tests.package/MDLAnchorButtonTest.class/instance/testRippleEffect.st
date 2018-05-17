tests
testRippleEffect
	self
		assert: [ :html | 
			html mdlAnchorButton
				rippleEffect;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-js-ripple-effect">Validate</a>'