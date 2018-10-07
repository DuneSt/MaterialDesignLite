tests
testLevel3
	self
		assert: [ :html | 
			html mdlCardTitleText
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-card__title-text">title</h3>'