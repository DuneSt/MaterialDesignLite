tests
testLevel6
	self
		assert: [ :html | 
			html mdlCardTitleText
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-card__title-text">title</h6>'