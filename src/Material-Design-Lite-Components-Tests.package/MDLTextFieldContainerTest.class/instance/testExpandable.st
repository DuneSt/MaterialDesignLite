tests
testExpandable
	self assert: [ :html | html mdlTextFieldContainer expandable ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'