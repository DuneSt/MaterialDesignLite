tests
testBareBrush
	self assert: [ :html | html mdlCheckboxLabel ] generates: '<span class="mdl-checkbox__label"></span>'