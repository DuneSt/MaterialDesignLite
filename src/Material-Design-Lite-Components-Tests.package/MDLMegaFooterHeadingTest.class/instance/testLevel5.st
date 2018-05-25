tests
testLevel5
	self
		assert: [ :html | 
			html mdlFooterHeading
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-mega-footer__heading">title</h5>'