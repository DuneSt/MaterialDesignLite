tests
testBareBrush
	self assert: [ :html | html mdlCardTitle ] generates: '<div class="mdl-card__title"></div>'