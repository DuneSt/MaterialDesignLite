tests
testCloseButtonName
	dialog closeButtonName: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button" id="id3" type="button">Test</button>'