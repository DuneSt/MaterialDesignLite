tests
testBareBrush
	self assert: [ :html | html mdlLayout ] generates: '<div class="mdl-layout mdl-js-layout"></div>'