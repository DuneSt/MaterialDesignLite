tests
testWithContent
	self assert: [ :html | html mdlTextFieldError: 'test' ] generates: '<span class="mdl-textfield__error">test</span>'