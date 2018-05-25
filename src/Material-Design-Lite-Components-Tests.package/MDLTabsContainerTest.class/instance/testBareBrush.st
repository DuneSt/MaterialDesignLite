tests
testBareBrush
	self assert: [ :html | html mdlTabs ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'