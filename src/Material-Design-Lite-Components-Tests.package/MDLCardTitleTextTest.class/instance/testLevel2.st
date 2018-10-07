tests
testLevel2
	self
		assert: [ :html | 
			html mdlCardTitleText
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-card__title-text">title</h2>'