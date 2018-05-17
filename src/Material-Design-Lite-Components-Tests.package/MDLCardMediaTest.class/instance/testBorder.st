tests
testBorder
	self assert: [ :html | html mdlCardMedia border ] generates: '<div class="mdl-card__media mdl-card--border"></div>'