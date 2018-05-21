tests
testIsActiveIf
	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: true ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'.
	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: false ] generates: '<div class="mdl-layout__tab-panel"></div>'.