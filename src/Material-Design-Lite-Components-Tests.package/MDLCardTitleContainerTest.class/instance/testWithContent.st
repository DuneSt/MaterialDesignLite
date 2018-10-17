tests
testWithContent
	self
		assert: [ :html | html mdlCardTitleContainer: [ html mdlCardTitleText: 'test' ] ]
		generates:
			'<div class="mdl-card__title"><h1 class="mdl-card__title-text">test</h1></div>'