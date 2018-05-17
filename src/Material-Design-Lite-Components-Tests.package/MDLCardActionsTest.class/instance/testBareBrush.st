tests
testBareBrush
	self assert: [ :html | html mdlCardActions ] generates: '<div class="mdl-card__actions"></div>'