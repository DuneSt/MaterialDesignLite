tests
testWithContent
	self assert: [ :html | html mdlIconToggleContainer with: 'Test' ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle">Test</label>'