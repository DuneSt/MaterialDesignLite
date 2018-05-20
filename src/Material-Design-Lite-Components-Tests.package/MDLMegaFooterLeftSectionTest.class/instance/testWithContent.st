tests
testWithContent
	self assert: [ :html | html mdlFooterLeftSection: 'Test' ] generates: '<div class="mdl-mega-footer__left-section">Test</div>'