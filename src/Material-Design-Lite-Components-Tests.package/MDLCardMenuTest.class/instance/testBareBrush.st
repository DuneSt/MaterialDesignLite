tests
testBareBrush
	self assert: [ :html | html mdlCardMenu ] generates: '<div class="mdl-card__menu"></div>'