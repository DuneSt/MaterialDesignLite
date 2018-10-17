tests
testBareBrush
	self
		assert: [ :html | html mdlCardTitleContainer ]
		generates: '<div class="mdl-card__title"></div>'