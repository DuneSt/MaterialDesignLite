tests
testBeExpandableIf
	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'.
	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'