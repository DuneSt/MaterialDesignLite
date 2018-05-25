tests
testFixedDrawer
	self assert: [ :html | html mdlLayout fixedDrawer ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer"></div>'