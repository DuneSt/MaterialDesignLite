tests
testWithContent
	self assert: [ :html | html mdlTextFieldExpandableHolder: 'test' ] generates: '<div class="mdl-textfield__expandable-holder">test</div>'