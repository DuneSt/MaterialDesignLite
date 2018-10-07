tests
testBareBrush
	self assert: [ :html | html mdlTextFieldContainer ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'