tests
testRippleEffectIf
	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: true ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: false ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'.