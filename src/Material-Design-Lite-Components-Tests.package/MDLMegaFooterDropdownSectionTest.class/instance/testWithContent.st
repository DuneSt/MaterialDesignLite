tests
testWithContent
	self assert: [ :html | html mdlFooterDropdownSection: 'Test' ] generates: '<div class="mdl-mega-footer__drop-down-section">Test</div>'