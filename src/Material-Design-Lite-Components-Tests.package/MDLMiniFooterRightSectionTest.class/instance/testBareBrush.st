tests
testBareBrush
	self assert: [ :html | html mdlMiniFooterRightSection ] generates: '<div class="mdl-mini-footer__right-section"></div>'