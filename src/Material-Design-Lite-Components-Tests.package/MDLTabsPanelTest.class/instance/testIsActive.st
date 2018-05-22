tests
testIsActive
	self assert: [ :html | html mdlTabsPanel isActive ] generates: '<div class="mdl-tabs__panel is-active"></div>'