tests
testWithContent
	self assert: [ :html | html mdlCardTitleText: 'title' ] generates: '<h1 class="mdl-card__title-text">title</h1>'