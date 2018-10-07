tests
testBareBrush
	self assert: [ :html | html mdlCheckbox ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'