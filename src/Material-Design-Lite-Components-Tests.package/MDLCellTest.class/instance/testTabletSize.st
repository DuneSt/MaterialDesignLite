tests
testTabletSize
	self assert: [ :html | html mdlCell: 'Test' tabletSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-tablet">Test</div>'