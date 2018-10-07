tests
testIsActiveIf
	self assert: [ :html | html mdlTabsPanel isActiveIf: true ] generates: '<div class="mdl-tabs__panel is-active"></div>'.
	self assert: [ :html | html mdlTabsPanel isActiveIf: false ] generates: '<div class="mdl-tabs__panel"></div>'.