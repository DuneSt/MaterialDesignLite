tests
testWithContent
	self assert: [ :html | html mdlFooterTopSection: 'Test' ] generates: '<div class="mdl-mega-footer__top-section">Test</div>'