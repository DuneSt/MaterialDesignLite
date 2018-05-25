tests
testIsActiveIf
	self assert: [ :html | html mdlTab isActiveIf: true ] generates: '<a class="mdl-tabs__tab is-active"></a>'.
	self assert: [ :html | html mdlTab isActiveIf: false ] generates: '<a class="mdl-tabs__tab"></a>'.