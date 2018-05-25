tests
testWithContent
	self assert: [ :html | html mdlFooter: 'Test' ] generates: '<footer class="mdl-mega-footer">Test</footer>'