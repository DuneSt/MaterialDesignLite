tests
testSize
	self assert: [ :html | html mdlCell: 'Test' size: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col">Test</div>'