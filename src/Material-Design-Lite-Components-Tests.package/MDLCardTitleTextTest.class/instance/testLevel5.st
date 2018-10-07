tests
testLevel5
	self
		assert: [ :html | 
			html mdlCardTitleText
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-card__title-text">title</h5>'