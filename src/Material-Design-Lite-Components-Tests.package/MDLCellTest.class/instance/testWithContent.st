tests
testWithContent
	self assert: [ :html | html mdlCell: 'Test' ] generates: '<div class="mdl-cell">Test</div>'