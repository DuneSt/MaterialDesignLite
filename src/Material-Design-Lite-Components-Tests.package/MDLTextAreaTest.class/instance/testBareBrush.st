tests
testBareBrush
	self assert: [ :html | html mdlTextArea ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'