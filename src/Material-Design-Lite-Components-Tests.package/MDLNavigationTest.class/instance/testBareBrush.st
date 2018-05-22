tests
testBareBrush
	self assert: [ :html | html mdlNavigation ] generates: '<nav class="mdl-navigation"></nav>'