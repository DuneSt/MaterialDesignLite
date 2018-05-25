tests
testBareBrush
	self assert: [ :html | html mdlLayoutHeaderRow ] generates: '<div class="mdl-layout__header-row"></div>'