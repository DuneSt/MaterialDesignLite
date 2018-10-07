tests
testIsActive
	self assert: [ :html | html mdlLayoutTab isActive ] generates: '<a class="mdl-layout__tab is-active"></a>'