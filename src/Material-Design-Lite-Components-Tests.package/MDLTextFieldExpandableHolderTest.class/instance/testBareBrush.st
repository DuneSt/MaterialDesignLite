tests
testBareBrush
	self assert: [ :html | html mdlTextFieldExpandableHolder ] generates: '<div class="mdl-textfield__expandable-holder"></div>'