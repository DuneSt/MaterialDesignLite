tests
testWithContent
	self assert: [ :html | html mdlFooterHeading: 'title' ] generates: '<h1 class="mdl-mega-footer__heading">title</h1>'