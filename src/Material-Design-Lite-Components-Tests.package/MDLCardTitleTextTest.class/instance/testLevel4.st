tests
testLevel4
	self
		assert: [ :html | 
			html mdlCardTitleText
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-card__title-text">title</h4>'