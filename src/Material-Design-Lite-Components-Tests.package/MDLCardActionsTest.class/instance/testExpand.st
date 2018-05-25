tests
testExpand
	self assert: [ :html | html mdlCardActions expand ] generates: '<div class="mdl-card__actions mdl-card--expand"></div>'