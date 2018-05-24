tests
testWithContent
	self assert: [ :html | html mdlTextFieldLabel: 'test' ] generates: '<label class="mdl-textfield__label">test</label>'