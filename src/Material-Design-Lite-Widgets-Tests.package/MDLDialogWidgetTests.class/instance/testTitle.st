tests
testTitle
	dialog title: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.	
	dialog title: [ :html | html text: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.
	dialog title: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">This is a mock</h4>'