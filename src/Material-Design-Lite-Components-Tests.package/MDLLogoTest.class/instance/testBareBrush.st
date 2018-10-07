tests
testBareBrush
	self assert: [ :html | html mdlLogo ] generates: '<div class="mdl-logo"></div>'