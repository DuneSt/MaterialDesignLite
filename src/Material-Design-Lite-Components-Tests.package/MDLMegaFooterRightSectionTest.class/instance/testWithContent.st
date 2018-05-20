tests
testWithContent
	self assert: [ :html | html mdlFooterRightSection: 'Test' ] generates: '<div class="mdl-mega-footer__right-section">Test</div>'