tests
testBareBrush
	self assert: [ :html | html mdlGrid ] generates: '<div class="mdl-grid"></div>'