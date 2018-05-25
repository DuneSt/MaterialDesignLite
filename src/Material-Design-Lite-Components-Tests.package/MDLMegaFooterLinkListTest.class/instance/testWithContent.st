tests
testWithContent
	self assert: [ :html | html mdlFooterLinkList: 'Test' ] generates: '<ul class="mdl-mega-footer__link-list">Test</ul>'