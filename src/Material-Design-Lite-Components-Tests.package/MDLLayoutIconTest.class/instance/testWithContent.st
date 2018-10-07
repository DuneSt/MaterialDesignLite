tests
testWithContent
	self assert: [ :html | html mdlLayoutIcon: 'test' ] generates: '<div class="mdl-layout-icon">test</div>'