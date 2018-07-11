tests
testButtonName
	dialog buttonName: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'