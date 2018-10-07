tests
testRippleEffect
	self assert: [ :html | html mdlCheckboxContainer rippleEffect ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'