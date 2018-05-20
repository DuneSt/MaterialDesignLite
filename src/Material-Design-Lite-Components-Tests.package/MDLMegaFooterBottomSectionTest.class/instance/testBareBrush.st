tests
testBareBrush
	self assert: [ :html | html mdlFooterBottomSection ] generates: '<div class="mdl-mega-footer__bottom-section"></div>'