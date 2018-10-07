tests
testBareBrush
	self assert: [ :html | html mdlCardTextContainer ] generates: '<div class="mdl-card__supporting-text"></div>'