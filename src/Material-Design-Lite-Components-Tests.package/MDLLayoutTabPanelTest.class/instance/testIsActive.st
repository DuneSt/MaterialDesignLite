tests
testIsActive
	self assert: [ :html | html mdlLayoutTabPanel isActive ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'