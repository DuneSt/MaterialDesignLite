tests
testFixedHeader
	self assert: [ :html | html mdlLayout fixedHeader ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header"></div>'