tests
testRippleEffect
	self assert: [ :html | html mdlSwitchContainer rippleEffect ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'