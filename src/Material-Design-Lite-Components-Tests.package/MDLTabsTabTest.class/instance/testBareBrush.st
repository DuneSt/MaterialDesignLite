tests
testBareBrush
	self assert: [ :html | html mdlTab ] generates: '<a class="mdl-tabs__tab"></a>'