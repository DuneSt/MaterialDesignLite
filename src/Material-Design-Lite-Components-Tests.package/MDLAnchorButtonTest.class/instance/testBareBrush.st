tests
testBareBrush
	self assert: [ :html | html mdlAnchorButton ] generates: '<a class="mdl-button mdl-js-button"></a>'