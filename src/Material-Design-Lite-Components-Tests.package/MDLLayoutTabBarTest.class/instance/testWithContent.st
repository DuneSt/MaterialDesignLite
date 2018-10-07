tests
testWithContent
	self assert: [ :html | html mdlLayoutTabBar: 'test' ] generates: '<div class="mdl-layout__tab-bar">test</div>'