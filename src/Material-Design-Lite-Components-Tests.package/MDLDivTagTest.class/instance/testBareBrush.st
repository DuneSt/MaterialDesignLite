tests
testBareBrush
	self assert: [ :html | html mdlDiv ] generates: '<div></div>'