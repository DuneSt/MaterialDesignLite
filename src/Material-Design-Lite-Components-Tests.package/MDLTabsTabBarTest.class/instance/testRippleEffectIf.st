tests
testRippleEffectIf
	self assert: [ :html | html mdlTabBar rippleEffectIf: true ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlTabBar rippleEffectIf: false ] generates: '<div class="mdl-tabs__tab-bar"></div>'.