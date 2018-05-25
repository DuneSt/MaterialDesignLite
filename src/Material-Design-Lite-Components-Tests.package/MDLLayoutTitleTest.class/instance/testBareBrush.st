tests
testBareBrush
	self assert: [ :html | html mdlLayoutTitle ] generates: '<span class="mdl-layout-title"></span>'