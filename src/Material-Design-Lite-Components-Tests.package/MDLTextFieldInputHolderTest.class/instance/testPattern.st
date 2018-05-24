tests
testPattern
	self assert: [ :html | html mdlTextFieldInput pattern: '(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$' ] generates: '<input class="mdl-textfield__input" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" type="text"/>'