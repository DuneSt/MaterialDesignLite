tests
testWithContent
	self assert: [ :html | html mdlLayoutDrawer: 'test' ] generates: '<div class="mdl-layout__drawer">test</div>'