tests
testRippleEffectIf
	self assert: [ :html | html mdlRadioContainer rippleEffectIf: true ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlRadioContainer rippleEffectIf: false ] generates: '<label class="mdl-radio mdl-js-radio"></label>'