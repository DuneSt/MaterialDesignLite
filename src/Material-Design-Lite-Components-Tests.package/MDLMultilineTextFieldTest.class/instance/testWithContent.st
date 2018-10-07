tests
testWithContent
	self assert: [ :html | html mdlMultilineTextField: 'Test' ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input">Test</textarea>'.
	self assert: [ :html | (html brush: MDLMultilineTextField new) with: 'Test' ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input">Test</textarea>'