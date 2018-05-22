tests
testBareBrush
	self assert: [ :html | html mdlMultilineTextField ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'