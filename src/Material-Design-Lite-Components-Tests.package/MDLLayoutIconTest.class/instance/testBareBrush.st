tests
testBareBrush
	self assert: [ :html | html mdlLayoutIcon ] generates: '<div class="mdl-layout-icon"></div>'