tests
testWithContent
	self assert: [ :html | html mdlCheckboxContainer with: 'Test' ] generates: '<label class="mdl-checkbox mdl-js-checkbox">Test</label>'