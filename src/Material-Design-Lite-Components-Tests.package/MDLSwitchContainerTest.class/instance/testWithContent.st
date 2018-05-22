tests
testWithContent
	self assert: [ :html | html mdlSwitchContainer with: 'test' ] generates: '<label class="mdl-switch mdl-js-switch">test</label>'