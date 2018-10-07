tests
testBareBrush
	self assert: [ :html | html mdlCardMedia ] generates: '<div class="mdl-card__media"></div>'