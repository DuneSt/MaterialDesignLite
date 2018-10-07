tests
testWithContent
	self assert: [ :html | html mdlMiniFooterLinkList: 'Test' ] generates: '<ul class="mdl-mini-footer__link-list">Test</ul>'