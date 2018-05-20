tests
testValue
	self assert: [ :html | html mdlCheckbox value: true ] generates: '<input class="mdl-checkbox__input" checked="checked" type="checkbox"/>'.
	self assert: [ :html | html mdlCheckbox value: false ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'.