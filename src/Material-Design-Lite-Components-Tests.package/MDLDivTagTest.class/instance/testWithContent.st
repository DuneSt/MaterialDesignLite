tests
testWithContent
	self assert: [ :html | html mdlDiv: 'Test' ] generates: '<div>Test</div>'