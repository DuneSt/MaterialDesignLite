tests
testBareBrush
	self assert: [ :html | html mdlFooterSocialButton ] generates: '<button class="mdl-mega-footer__social-btn" type="submit"></button>'