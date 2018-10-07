tests
testBareBrush
	self assert: [ :html | html mdlCardTitleText ] generates: '<h1 class="mdl-card__title-text"></h1>'