tests
testWithContent
	self assert: [ :html | html mdlFooterBottomSection: 'Test' ] generates: '<div class="mdl-mega-footer__bottom-section">Test</div>'