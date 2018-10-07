tests
testRippleEffect
	self
		assert: [ :html | 
			html mdlButton
				rippleEffect;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Validate</button>'