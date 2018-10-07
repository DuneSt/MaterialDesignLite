tests
testRippleEffect
	self assert: [ :html | html mdlLayoutTabBar rippleEffect ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'