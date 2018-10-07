tests
testIsActive
	self assert: [ :html | html mdlTab isActive ] generates: '<a class="mdl-tabs__tab is-active"></a>'