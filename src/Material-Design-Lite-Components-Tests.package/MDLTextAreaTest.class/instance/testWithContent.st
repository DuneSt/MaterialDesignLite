tests
testWithContent
	self assert: [ :html | html mdlTextArea: 'test' ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input">test</textarea>'