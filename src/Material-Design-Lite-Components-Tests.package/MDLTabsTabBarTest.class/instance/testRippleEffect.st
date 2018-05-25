tests
testRippleEffect
	self assert: [ :html | html mdlTabBar rippleEffect ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'