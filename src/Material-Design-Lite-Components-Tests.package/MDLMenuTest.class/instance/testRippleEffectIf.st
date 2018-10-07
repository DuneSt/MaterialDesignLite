tests
testRippleEffectIf
	self assert: [ :html | html mdlMenu rippleEffectIf: true ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'.
	self assert: [ :html | html mdlMenu rippleEffectIf: false ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'