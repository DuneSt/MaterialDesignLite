tests
testRippleEffectIf
	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: true ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: false ] generates: '<div class="mdl-layout__tab-bar"></div>'