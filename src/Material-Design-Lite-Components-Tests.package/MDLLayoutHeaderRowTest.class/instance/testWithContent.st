tests
testWithContent
	self assert: [ :html | html mdlLayoutHeaderRow: 'test' ] generates: '<div class="mdl-layout__header-row">test</div>'