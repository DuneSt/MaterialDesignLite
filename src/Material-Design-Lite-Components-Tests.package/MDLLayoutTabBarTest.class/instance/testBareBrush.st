tests
testBareBrush
	self assert: [ :html | html mdlLayoutTabBar ] generates: '<div class="mdl-layout__tab-bar"></div>'