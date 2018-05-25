tests
testBareBrush
	self assert: [ :html | html mdlLayoutSpacer ] generates: '<div class="mdl-layout-spacer"></div>'