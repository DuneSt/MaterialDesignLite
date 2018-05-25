tests
testBareBrush
	self assert: [ :html | html mdlTabsPanel ] generates: '<div class="mdl-tabs__panel"></div>'