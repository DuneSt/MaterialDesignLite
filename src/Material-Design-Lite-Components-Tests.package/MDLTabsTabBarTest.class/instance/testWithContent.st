tests
testWithContent
	self assert: [ :html | html mdlTabBar: 'test' ] generates: '<div class="mdl-tabs__tab-bar">test</div>'