tests
testNoDesktopDrawerButton
	self assert: [ :html | html mdlLayout noDesktopDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-desktop-drawer-button"></div>'