tests
testBorder
	self assert: [ :html | html mdlCardTextContainer border ] generates: '<div class="mdl-card__supporting-text mdl-card--border"></div>'