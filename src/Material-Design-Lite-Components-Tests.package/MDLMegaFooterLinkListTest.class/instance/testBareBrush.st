tests
testBareBrush
	self assert: [ :html | html mdlFooterLinkList ] generates: '<ul class="mdl-mega-footer__link-list"></ul>'