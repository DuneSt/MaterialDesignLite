tests
testBareBrush
	self assert: [ :html | html mdlCell ] generates: '<div class="mdl-cell"></div>'