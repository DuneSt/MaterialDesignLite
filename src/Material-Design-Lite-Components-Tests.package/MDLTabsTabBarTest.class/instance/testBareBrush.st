tests
testBareBrush
	self assert: [ :html | html mdlTabBar ] generates: '<div class="mdl-tabs__tab-bar"></div>'