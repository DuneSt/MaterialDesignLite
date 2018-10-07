tests
testPhoneSize
	self assert: [ :html | html mdlCell: 'Test' phoneSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-phone">Test</div>'