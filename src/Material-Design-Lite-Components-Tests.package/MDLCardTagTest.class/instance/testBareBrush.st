tests
testBareBrush
	self assert: [ :html | html mdlCard ] generates: '<div class="mdl-card"></div>'