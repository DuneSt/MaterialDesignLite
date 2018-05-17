tests
testBorder
	self assert: [ :html | html mdlCardTitle border ] generates: '<div class="mdl-card__title mdl-card--border"></div>'