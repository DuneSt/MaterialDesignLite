tests
testBareBrush
	self assert: [ :html | html mdlLayoutTab ] generates: '<a class="mdl-layout__tab"></a>'