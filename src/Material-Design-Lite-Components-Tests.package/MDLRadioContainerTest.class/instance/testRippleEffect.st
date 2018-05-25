tests
testRippleEffect
	self assert: [ :html | html mdlRadioContainer rippleEffect ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'