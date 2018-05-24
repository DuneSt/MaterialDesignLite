tests
testBeFloatingLabelIf
	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'.
	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'