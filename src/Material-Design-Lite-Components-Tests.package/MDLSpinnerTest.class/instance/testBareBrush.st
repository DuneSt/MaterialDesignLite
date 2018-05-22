tests
testBareBrush
	self assert: [ :html | html mdlSpinner ] generates: '<div class="mdl-spinner mdl-js-spinner"></div>'