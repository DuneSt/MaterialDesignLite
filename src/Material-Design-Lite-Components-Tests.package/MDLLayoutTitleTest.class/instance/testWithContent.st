tests
testWithContent
	self assert: [ :html | html mdlLayoutTitle: 'test' ] generates: '<span class="mdl-layout-title">test</span>'