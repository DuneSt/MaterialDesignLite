tests
testBareBrush
	self assert: [ :html | html brush: MDLTextFieldError new ] generates: '<span class="mdl-textfield__error"></span>'