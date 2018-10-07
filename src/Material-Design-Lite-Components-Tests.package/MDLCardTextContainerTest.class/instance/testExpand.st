tests
testExpand
	self assert: [ :html | html mdlCardTextContainer expand ] generates: '<div class="mdl-card__supporting-text mdl-card--expand"></div>'