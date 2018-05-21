tests
testFixedTabs
	self assert: [ :html | html mdlLayout fixedTabs ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-tabs"></div>'