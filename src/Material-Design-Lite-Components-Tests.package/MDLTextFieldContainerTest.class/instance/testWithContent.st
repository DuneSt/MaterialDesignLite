tests
testWithContent
	self assert: [ :html | html mdlTextFieldContainer: 'test' ] generates: '<div class="mdl-textfield mdl-js-textfield">test</div>'