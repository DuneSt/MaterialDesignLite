tests
testBareBrush
	self assert: [ :html | html mdlFooterHeadingCheckbox ] generates: '<input class="mdl-mega-footer__heading-checkbox" checked="checked" type="checkbox"/>'