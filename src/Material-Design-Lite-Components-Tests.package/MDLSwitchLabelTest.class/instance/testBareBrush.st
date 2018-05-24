tests
testBareBrush
	self assert: [ :html | html mdlSwitchLabel ] generates: '<span class="mdl-switch__label"></span>'