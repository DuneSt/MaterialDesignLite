tests
testBareBrush
	self assert: [ :html | html mdlIcon ] generates: '<i class="material-icons"></i>'