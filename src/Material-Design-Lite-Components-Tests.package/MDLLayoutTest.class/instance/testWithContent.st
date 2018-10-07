tests
testWithContent
	self assert: [ :html | html mdlLayout: 'Test' ] generates: '<div class="mdl-layout mdl-js-layout">Test</div>'