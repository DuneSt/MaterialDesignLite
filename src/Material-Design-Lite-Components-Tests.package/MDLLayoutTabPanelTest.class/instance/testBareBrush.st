tests
testBareBrush
	self assert: [ :html | html mdlLayoutTabPanel ] generates: '<div class="mdl-layout__tab-panel"></div>'