tests
testBareBrush
	self assert: [ :html | html mdlTextFieldInput ] generates: '<input class="mdl-textfield__input" type="text"/>'