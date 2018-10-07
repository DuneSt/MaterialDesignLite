tests
testWithContent
	self assert: [ :html | html mdlDialog with: 'Test' ] generates: '<dialog class="mdl-dialog">Test</dialog>'