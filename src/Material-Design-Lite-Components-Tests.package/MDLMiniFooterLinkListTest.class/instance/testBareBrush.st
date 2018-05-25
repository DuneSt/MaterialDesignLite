tests
testBareBrush
	self assert: [ :html | html mdlMiniFooterLinkList ] generates: '<ul class="mdl-mini-footer__link-list"></ul>'