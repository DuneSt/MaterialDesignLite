tests
testRippleEffectIf
	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: true ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: false ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'.