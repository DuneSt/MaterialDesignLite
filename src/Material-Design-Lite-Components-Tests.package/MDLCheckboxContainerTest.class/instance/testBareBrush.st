tests
testBareBrush
	self assert: [ :html | html mdlCheckboxContainer ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'