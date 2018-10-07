tests
testBareBrush
	self assert: [ :html | html mdlLayoutDrawer ] generates: '<div class="mdl-layout__drawer"></div>'