tests
testRippleEffect
	self assert: [ :html | html mdlIconToggleContainer rippleEffect ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'