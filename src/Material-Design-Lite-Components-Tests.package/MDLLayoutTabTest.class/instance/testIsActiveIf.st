tests
testIsActiveIf
	self assert: [ :html | html mdlLayoutTab isActiveIf: true ] generates: '<a class="mdl-layout__tab is-active"></a>'.
	self assert: [ :html | html mdlLayoutTab isActiveIf: false ] generates: '<a class="mdl-layout__tab"></a>'