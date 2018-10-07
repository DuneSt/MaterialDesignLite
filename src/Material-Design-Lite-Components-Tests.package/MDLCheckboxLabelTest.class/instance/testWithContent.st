tests
testWithContent
	self assert: [ :html | html mdlCheckboxLabel: 'label' ] generates: '<span class="mdl-checkbox__label">label</span>'