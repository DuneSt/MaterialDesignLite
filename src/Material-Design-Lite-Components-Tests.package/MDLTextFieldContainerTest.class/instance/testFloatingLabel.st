tests
testFloatingLabel
	self assert: [ :html | html mdlTextFieldContainer floatingLabel ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'