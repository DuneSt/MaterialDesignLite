tests
testExpand
	self assert: [ :html | html mdlCardMedia expand ] generates: '<div class="mdl-card__media mdl-card--expand"></div>'