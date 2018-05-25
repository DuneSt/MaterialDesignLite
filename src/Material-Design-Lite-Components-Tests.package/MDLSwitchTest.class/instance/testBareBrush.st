tests
testBareBrush
	self assert: [ :html | html mdlSwitch ] generates: '<input class="mdl-switch__input" type="checkbox"/>'