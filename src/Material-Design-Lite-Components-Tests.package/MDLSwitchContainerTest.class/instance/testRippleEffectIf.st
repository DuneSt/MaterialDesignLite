tests
testRippleEffectIf
	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: true ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: false ] generates: '<label class="mdl-switch mdl-js-switch"></label>'