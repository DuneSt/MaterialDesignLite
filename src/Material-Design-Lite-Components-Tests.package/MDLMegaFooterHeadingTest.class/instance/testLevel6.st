tests
testLevel6
	self
		assert: [ :html | 
			html mdlFooterHeading
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-mega-footer__heading">title</h6>'