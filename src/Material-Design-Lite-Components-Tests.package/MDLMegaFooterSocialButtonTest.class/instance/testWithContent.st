tests
testWithContent
	self assert: [ :html | html mdlFooterSocialButton: 'Test' ] generates: '<button class="mdl-mega-footer__social-btn" type="submit">Test</button>'