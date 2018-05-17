tests
testExpand
	self assert: [ :html | html mdlCardTitle expand ] generates: '<div class="mdl-card__title mdl-card--expand"></div>'