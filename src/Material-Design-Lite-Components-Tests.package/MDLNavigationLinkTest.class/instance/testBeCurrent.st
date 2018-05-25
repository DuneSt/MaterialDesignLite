tests
testBeCurrent
	self assert: [ :html | html mdlNavigationLink beCurrent ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'