tests
testWithContent
	self assert: [ :html | html mdlRadioContainer with: 'test' ] generates: '<label class="mdl-radio mdl-js-radio">test</label>'