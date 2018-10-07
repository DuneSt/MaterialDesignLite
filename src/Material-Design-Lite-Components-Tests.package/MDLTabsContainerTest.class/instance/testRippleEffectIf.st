tests
testRippleEffectIf
	self assert: [ :html | html mdlTabs rippleEffectIf: true ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlTabs rippleEffectIf: false ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'.