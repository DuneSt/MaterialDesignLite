tests
testBareBrush
	self assert: [ :html | html mdlFooterLeftSection ] generates: '<div class="mdl-mega-footer__left-section"></div>'