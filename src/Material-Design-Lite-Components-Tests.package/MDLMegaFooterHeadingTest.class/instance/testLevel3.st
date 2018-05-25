tests
testLevel3
	self
		assert: [ :html | 
			html mdlFooterHeading
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-mega-footer__heading">title</h3>'