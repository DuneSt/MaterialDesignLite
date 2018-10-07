tests
testBareBrush
	self assert: [ :html | html brush: MDLTextFieldLabel new ] generates: '<label class="mdl-textfield__label"></label>'