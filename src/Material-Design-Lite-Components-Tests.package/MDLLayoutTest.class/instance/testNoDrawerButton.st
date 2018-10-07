tests
testNoDrawerButton
	self assert: [ :html | html mdlLayout noDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-drawer-button"></div>'