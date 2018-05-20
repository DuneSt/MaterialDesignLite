tests
testHidePhone
	self assert: [ :html | html mdlCell hidePhone with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--hide-phone">Test</div>'