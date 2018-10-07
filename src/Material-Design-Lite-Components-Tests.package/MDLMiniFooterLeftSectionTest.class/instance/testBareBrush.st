tests
testBareBrush
	self assert: [ :html | html mdlMiniFooterLeftSection ] generates: '<div class="mdl-mini-footer__left-section"></div>'