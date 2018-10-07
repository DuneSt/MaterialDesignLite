tests
testWithContent
	self assert: [ :html | html mdlMenu with: 'Test' ] generates: '<ul class="mdl-menu mdl-js-menu">Test</ul>'