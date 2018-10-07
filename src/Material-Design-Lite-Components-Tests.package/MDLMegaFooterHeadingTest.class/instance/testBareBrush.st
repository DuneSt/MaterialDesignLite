tests
testBareBrush
	self assert: [ :html | html mdlFooterHeading ] generates: '<h1 class="mdl-mega-footer__heading"></h1>'