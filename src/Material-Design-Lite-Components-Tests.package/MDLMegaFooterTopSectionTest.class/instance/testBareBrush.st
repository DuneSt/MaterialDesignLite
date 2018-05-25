tests
testBareBrush
	self assert: [ :html | html mdlFooterTopSection ] generates: '<div class="mdl-mega-footer__top-section"></div>'