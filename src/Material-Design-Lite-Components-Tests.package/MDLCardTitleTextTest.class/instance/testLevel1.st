tests
testLevel1
	self
		assert: [ :html | 
			html mdlCardTitleText
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-card__title-text">title</h1>'