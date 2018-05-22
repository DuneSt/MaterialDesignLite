tests
testWithContent
	self assert: [ :html | html mdlRadioLabel: 'test' ] generates: '<span class="mdl-radio__label">test</span>'