tests
testWithContent
	self assert: [ :html | html mdlMiniFooterLeftSection: 'Test' ] generates: '<div class="mdl-mini-footer__left-section">Test</div>'