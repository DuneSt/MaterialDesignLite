tests
testBareBrush
	self assert: [ :html | html mdlNavigationLink ] generates: '<a class="mdl-navigation__link"></a>'