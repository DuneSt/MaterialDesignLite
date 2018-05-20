tests
testWithContent
	self assert: [ :html | html mdlFooterMiddleSection: 'Test' ] generates: '<div class="mdl-mega-footer__middle-section">Test</div>'