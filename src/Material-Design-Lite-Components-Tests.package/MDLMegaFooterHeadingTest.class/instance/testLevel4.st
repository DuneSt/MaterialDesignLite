tests
testLevel4
	self
		assert: [ :html | 
			html mdlFooterHeading
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-mega-footer__heading">title</h4>'