tests
testWithContent
	self assert: [ :html | html mdlMiniFooterRightSection: 'Test' ] generates: '<div class="mdl-mini-footer__right-section">Test</div>'