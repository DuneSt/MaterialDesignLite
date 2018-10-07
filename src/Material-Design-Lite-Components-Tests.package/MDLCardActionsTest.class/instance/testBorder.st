tests
testBorder
	self assert: [ :html | html mdlCardActions border ] generates: '<div class="mdl-card__actions mdl-card--border"></div>'