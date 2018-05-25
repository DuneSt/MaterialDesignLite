tests
testBareBrush
	self assert: [ :html | html mdlFooterDropdownSection ] generates: '<div class="mdl-mega-footer__drop-down-section"></div>'