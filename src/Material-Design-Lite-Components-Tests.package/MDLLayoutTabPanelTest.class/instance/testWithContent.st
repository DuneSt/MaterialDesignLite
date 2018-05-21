tests
testWithContent
	self assert: [ :html | html mdlLayoutTabPanel: 'test' ] generates: '<div class="mdl-layout__tab-panel">test</div>'