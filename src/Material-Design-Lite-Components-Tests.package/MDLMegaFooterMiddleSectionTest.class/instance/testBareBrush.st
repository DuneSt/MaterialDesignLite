tests
testBareBrush
	self assert: [ :html | html mdlFooterMiddleSection ] generates: '<div class="mdl-mega-footer__middle-section"></div>'