tests
testBareBrush
	self assert: [ :html | html mdlIconToggle ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'