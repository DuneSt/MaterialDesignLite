tests
testBareBrush
	self assert: [ :html | html mdlMiniFooterSocialButton ] generates: '<button class="mdl-mini-footer__social-btn" type="submit"></button>'