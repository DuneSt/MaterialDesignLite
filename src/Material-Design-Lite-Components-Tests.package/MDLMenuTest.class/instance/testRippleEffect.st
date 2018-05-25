tests
testRippleEffect
	self assert: [ :html | html mdlMenu rippleEffect ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'