tests
testBareBrush
	self assert: [ :html | html mdlFooterRightSection ] generates: '<div class="mdl-mega-footer__right-section"></div>'