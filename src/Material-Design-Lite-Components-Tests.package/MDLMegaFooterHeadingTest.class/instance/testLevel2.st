tests
testLevel2
	self
		assert: [ :html | 
			html mdlFooterHeading
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-mega-footer__heading">title</h2>'