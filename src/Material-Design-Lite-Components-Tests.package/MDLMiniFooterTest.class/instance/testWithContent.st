tests
testWithContent
	self assert: [ :html | html mdlMiniFooter: 'Test' ] generates: '<footer class="mdl-mini-footer">Test</footer>'