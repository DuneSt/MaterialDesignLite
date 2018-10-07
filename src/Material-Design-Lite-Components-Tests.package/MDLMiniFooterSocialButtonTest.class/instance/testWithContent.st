tests
testWithContent
	self assert: [ :html | html mdlMiniFooterSocialButton: 'Test' ] generates: '<button class="mdl-mini-footer__social-btn" type="submit">Test</button>'