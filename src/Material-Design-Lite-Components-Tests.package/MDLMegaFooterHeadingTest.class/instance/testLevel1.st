tests
testLevel1
	self
		assert: [ :html | 
			html mdlFooterHeading
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-mega-footer__heading">title</h1>'