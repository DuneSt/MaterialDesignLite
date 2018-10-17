tests
testExpand
	self
		assert: [ :html | html mdlCardTitleContainer expand ]
		generates: '<div class="mdl-card__title mdl-card--expand"></div>'