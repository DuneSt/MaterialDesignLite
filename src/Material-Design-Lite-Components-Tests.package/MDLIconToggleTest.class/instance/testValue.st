tests
testValue
	self assert: [ :html | html mdlIconToggle value: true ] generates: '<input class="mdl-icon-toggle__input" checked="checked" type="checkbox"/>'.
	self assert: [ :html | html mdlIconToggle value: false ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'