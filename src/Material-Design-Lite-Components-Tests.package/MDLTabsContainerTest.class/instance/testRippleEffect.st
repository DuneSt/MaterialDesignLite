tests
testRippleEffect
	self assert: [ :html | html mdlTabs rippleEffect ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'