tests
testWithContent
	self assert: [ :html | html mdlSwitchLabel: 'test' ] generates: '<span class="mdl-switch__label">test</span>'